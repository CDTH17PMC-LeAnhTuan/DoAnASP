using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
using System.Data;
using System.Data.SqlClient;
namespace buoi2
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                if (!Page.IsPostBack)
                {

                    DataTable dtbKetQua = BUS_GioHang.LayGH(tenTK);
                    grvGioHang.DataSource = dtbKetQua;
                    grvGioHang.DataBind();
                    lblTongTien.Text = BUS_GioHang.TinhTongTienGH(tenTK).ToString();
                }
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
        }

        protected void btnThanhToan_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                DTO_HoaDon hd = new DTO_HoaDon();
                hd.TenTaiKhoan = tenTK;
                hd.NgayMua = DateTime.Now;
                hd.DiaChiGiaoHang = "Tp.HCM";
                hd.SdtGiaoHang = "0905939947";
                hd.TongTien = BUS_GioHang.TinhTongTienGH(tenTK);
                hd.MaHD = BUS_HoaDon.ThemHD(hd);

                DataTable dtbKetQua = BUS_GioHang.LayGH(tenTK);
                foreach (DataRow dr in dtbKetQua.Rows)
                {
                    DTO_CTHoaDon cthd = new DTO_CTHoaDon();
                    cthd.MaHD = hd.MaHD;
                    cthd.MaSP = dr["MaSP"].ToString();
                    cthd.SoLuong = Convert.ToInt32(dr["SoLuong"]);
                    cthd.DonGia = Convert.ToInt32(dr["GiaTien"]);
                    BUS_CTHoaDon.ThemCTHD(cthd);
                }
            }
        }
      
    }
}