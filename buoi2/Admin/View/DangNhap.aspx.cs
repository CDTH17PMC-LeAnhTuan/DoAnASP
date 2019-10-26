using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace buoi2.Admin.View
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string tk = txtTenTaiKhoan.Text;
            string mk = txtMatKhau.Text;
            if (BUS_TaiKhoan.DangNhap(tk, mk))
            {
                Response.Write("<script>alert('Đăng nhập thành công!')</script>");
            }
            else
            {
                Response.Write("<script>alert('Đăng nhập thất bại')</script>");
            }
        }
    }
}