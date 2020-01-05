using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace buoi2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            LoadDSSP();
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                lblHienThi.Text = "Xin chào " + cookie.Value;
                btnDangXuat.Visible = true;
            }
            else
            {
                lblHienThi.Text = "Xin chào Khách";
                btnDangXuat.Visible = false;
            }
         
        }
        protected void LoadDSSP()
        {
            //Category
            rpLoaiSP.DataSource = BUS_LoaiSanPham.LoadDSLoaiSP();
            rpLoaiSP.DataBind();

            //Products
            rptSanPham.DataSource = BUS_SanPham.LoadDSSanPham();
            rptSanPham.DataBind();

            //Tshirt
            rptTshirt.DataSource = BUS_SanPham.LoadDSSanPham();
            rptTshirt.DataBind();

            //Blazers
            rptBlazers.DataSource = BUS_SanPham.LoadDSSanPham();
            rptBlazers.DataBind();
            
            //Sunglass
            rptSunglass.DataSource = BUS_SanPham.LoadDSSanPham();
            rptSunglass.DataBind();

            //PoloShirt
            rptPoloshirt.DataSource = BUS_SanPham.LoadDSSanPham();
            rptPoloshirt.DataBind();

            //Kids
            rptKids.DataSource = BUS_SanPham.LoadDSSanPham();
            rptKids.DataBind();
            
            //Carousel
            rptCarousel1.DataSource = BUS_SanPham.LoadDSSanPham();
            rptCarousel1.DataBind();
            rptCarousel2.DataSource = BUS_SanPham.LoadDSSanPham();
            rptCarousel2.DataBind();
          
        }

        public void LoadSanPhamTheoTen()
        {
            rptSanPham.DataSource = BUS_SanPham.LayDSSanPham(txtTimKiem.Text);
            rptSanPham.DataBind();
        }
        protected void btnDangXuat_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);

            Response.Redirect(Request.RawUrl);
        }

        protected void rptSanPham_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ThemGH")
            {            
                HttpCookie cookie = Request.Cookies["TenTK"];
                if (cookie != null)
                {
                    DTO_GioHang gioHang = new DTO_GioHang();
                    gioHang.TenTaiKhoan = cookie.Value;
                    gioHang.MaSP = e.CommandArgument.ToString();
                    gioHang.SoLuong = 1;
                    if (BUS_GioHang.ThemGioHang(gioHang))
                    {
                        Response.Write("<script>alert('Thêm sản phẩm thành công')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Thêm sản phẩm thành công')</script>");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            if(BUS_SanPham.TimKiemSanPham(txtTimKiem.Text)!=null)
            {
                LoadSanPhamTheoTen();
            }
        }
        
       
    }
}