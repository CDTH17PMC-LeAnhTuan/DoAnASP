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
    public partial class Shop_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSSP();
            }
        }
        public void LoadDSSP()
        {
            rptSanPham.DataSource = BUS_SanPham.LoadDSSanPham();
            rptSanPham.DataBind();
        }

        protected void rptSanPham_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName == "ThemGH")
            {
                HttpCookie cookie = Request.Cookies["TenTK"];
                if(cookie != null)
                {
                    DTO_GioHang gioHang = new DTO_GioHang();
                    gioHang.TenTaiKhoan = cookie.Value;
                    gioHang.MaSP = e.CommandArgument.ToString();
                    gioHang.SoLuong = 1;
                    if(BUS_GioHang.ThemGioHang(gioHang))
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
    }
}