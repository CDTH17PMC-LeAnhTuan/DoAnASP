using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace buoi2.Admin.View
{
    public partial class QLSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSSanPham();
            }
        }

        protected void LoadDSSanPham()
        {
            grvDSProduct.DataSource = BUS_SanPham.LoadDSSanPham();
            grvDSProduct.DataBind();
        }

        protected void grvDSProduct_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChonSP")
            {
                string maSP = e.CommandArgument.ToString();
                DTO_SanPham sanPham = BUS_SanPham.LaySanPham(maSP);
                if (sanPham != null)
                {
                    txtMaSanPham.Text = sanPham.MaSP;
                    txtTenSanPham.Text = sanPham.TenSP;
                    txtThongTinSP.Text = sanPham.ThongTin;
                    txtGiaTien.Text = Convert.ToString(sanPham.GiaTien);
                    txtSoLuong.Text = Convert.ToString(sanPham.SoLuongTonKho);
                    txtMaLoaiSP.Text = sanPham.MaLoaiSP;
                    txtAnhMinhHoa.Text = sanPham.AnhMinhHoa;
                    chkTrangThai.Checked = sanPham.TrangThai;
                }
            }
            if (e.CommandName == "XoaSP")
            {
                string maSP = e.CommandArgument.ToString();

                if (BUS_SanPham.XoaSanPham(maSP))
                {
                    Response.Write("<script>alert('Xóa sản phảm thành công');</script>");
                    LoadDSSanPham();
                }
                else
                {
                    Response.Write("<script>alert('Xóa sản phẩm thất bại');</script>");
                }
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            DTO_SanPham sp = new DTO_SanPham();
            sp.MaSP = txtMaSanPham.Text;
            sp.TenSP = txtTenSanPham.Text;
            sp.ThongTin = txtThongTinSP.Text;
            sp.GiaTien = Convert.ToInt32(txtGiaTien.Text);
            sp.SoLuongTonKho = Convert.ToInt32(txtSoLuong.Text);
            sp.MaLoaiSP = txtMaLoaiSP.Text;
            sp.TrangThai = Convert.ToBoolean(chkTrangThai.Checked);
            sp.AnhMinhHoa = "chuaco.jpg";

            if (!(sp.MaSP == "" || sp.TenSP == "" || sp.ThongTin == "" || sp.GiaTien == null || sp.SoLuongTonKho == null || sp.MaLoaiSP == "" || sp.AnhMinhHoa == ""))
            {
                if (BUS_SanPham.ThemSanPham(sp))
                {
                    Response.Write("<script>alert('Thêm sản phẩm thành công')</script>");
                    LoadDSSanPham();
                }
                else
                {
                    Response.Write("<script>alert('Thêm sản phẩm  thất bại')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Chưa nhập đủ thông tin')</script>");

            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            DTO_SanPham sp = new DTO_SanPham();
            sp.MaSP = txtMaSanPham.Text;
            sp.TenSP = txtTenSanPham.Text;
            sp.ThongTin = txtThongTinSP.Text;
            sp.GiaTien = Convert.ToInt32(txtGiaTien.Text);
            sp.MaLoaiSP = txtMaLoaiSP.Text;
            sp.SoLuongTonKho = Convert.ToInt32(txtSoLuong.Text);
            sp.AnhMinhHoa = sp.AnhMinhHoa;
            sp.TrangThai = sp.TrangThai;
            if (BUS_SanPham.ChinhSuaSanPham(sp))
            {
                Response.Write("<script>alert('Chỉnh sửa thành công!')</script>");
                LoadDSSanPham();
            }
            else
            {
                Response.Write("<script>alert('Chỉnh sửa thất bại!')</script>");
            }
        }
    }
}