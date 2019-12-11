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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string taiKhoan = txtName.Text;
            string matKhau = txtPassword.Text;
            if(BUS_TaiKhoan.DangNhap(taiKhoan,matKhau))
            {
                HttpCookie cookie = new HttpCookie("TenTK");
                cookie.Value = taiKhoan;
                cookie.Expires = DateTime.Now.AddDays(14);
                Response.Cookies.Add(cookie);
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>('Đăng nhập thất bại')</script>");
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            DTO_TaiKhoan tk = new DTO_TaiKhoan();
            tk.TenTaiKhoan = txtName1.Text;
            tk.MatKhau = txtPassword1.Text;
            tk.Email = txtEmail.Text;
            tk.DiaChi = txtDiaChi.Text;
            tk.SDT = txtSDT.Text;
            tk.HoTen = txtHoTen.Text;
            if(BUS_TaiKhoan.DangKy(tk))
            {
                Response.Write("<script>alert('Đăng kí thành công')</script>");
            }
            else
            {
                Response.Write("<script>alert('Đăng kí thất bại')</script>");
            }
        }
    }
}