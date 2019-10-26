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
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
               
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            DTO_TaiKhoan tk = new DTO_TaiKhoan();
            tk.TenTaiKhoan = txtTenTaiKhoan.Text;
            tk.MatKhau = txtMatKhau.Text;
            tk.Email = txtEmail.Text;
            tk.SDT = txtSDT.Text;
            tk.DiaChi = txtDiaChi.Text;
            tk.HoTen = txtHoTen.Text;

            if (BUS_TaiKhoan.DangKy(tk))
            {
                Response.Write("Đăng kí thành công");
            }
            else
            {
                Response.Write("Đăng kí thất bại");
            }
        }
    }
}