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
                    rptGiohang.DataSource = dtbKetQua;
                    rptGiohang.DataBind();
                    lblTongTien.Text = BUS_GioHang.TinhTongTienGH(tenTK).ToString();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
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

        protected void rptGiohang_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DTO_GioHang gh = new DTO_GioHang();
            if (e.CommandName == "CapNhatGH")
            {
                gh.MaSP = e.CommandArgument.ToString();
                gh.TenTaiKhoan = Request.Cookies["TenTK"].Value;
                gh.SoLuong = Convert.ToInt32((e.Item.FindControl("txtSoLuong") as TextBox).Text);
                if (BUS_GioHang.ThemGioHang(gh) == true)
                {
                    Response.Write("<script>alert('Cập nhật thành công')</script>");
                    Response.Redirect("Cart.aspx");
                }
            }
            if (e.CommandName == "XoaGH")
            {
                string maSP = e.CommandArgument.ToString();
                BUS_GioHang.XoaGioHang(maSP);
                Response.Redirect("Cart.aspx");
            }
        }

    }
}