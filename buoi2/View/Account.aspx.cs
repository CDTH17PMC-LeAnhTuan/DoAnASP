using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BUS;
using DTO;
namespace buoi2.View
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["TenTK"];
            if (cookie != null)
            {
                string tenTK = cookie.Value;
                if (!Page.IsPostBack)
                {
                    DataTable dtbKetQua = BUS_TaiKhoan.LayTaiKhoan(tenTK);
                    grvDSUser.DataSource = dtbKetQua;
                    grvDSUser.DataBind();
               
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void grvDSUser_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ChonTK")
            {
                string tenTaiKhoan = e.CommandArgument.ToString();
                DTO_TaiKhoan tk = BUS_TaiKhoan.LayLoaiTaiKhoan(tenTaiKhoan);
                if (tk != null)
                {
                    txtTenTaiKhoan.Text = tk.TenTaiKhoan;
                    txtEmail.Text = tk.Email;
                    txtMatKhau.Text= tk.MatKhau;
                    txtSDT.Text = tk.SDT;
                    txtDiaChi.Text = tk.DiaChi;
                    txtHoTen.Text = tk.HoTen;              
                }
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            DTO_TaiKhoan tk = new DTO_TaiKhoan();
            tk.TenTaiKhoan = txtTenTaiKhoan.Text;
            tk.MatKhau = txtMatKhau.Text;
            tk.Email = txtEmail.Text;
            tk.SDT = txtSDT.Text;
            tk.DiaChi = txtDiaChi.Text;
             tk.HoTen = txtHoTen.Text;       
            if (BUS_TaiKhoan.ChinhSuaTaiKhoan(tk))
            {
                Response.Write("<script>alert('Chỉnh sửa thành công!')</script>");
                
            }
            else
            {
                Response.Write("<script>alert('Chỉnh sửa thất bại!')</script>");
            }
        }

        

       
    }
}