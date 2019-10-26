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
namespace buoi2.Admin.View
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSTaiKhoan();
            }
        }
        protected void LoadDSTaiKhoan()
        {
            grvDSUser.DataSource = BUS_TaiKhoan.DLoadDSTaiKhoan();
            grvDSUser.DataBind();
        }
      
        protected void grvDSUser_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "ChonTK")
            {
                string tenTaiKhoan = e.CommandArgument.ToString();
                DTO_TaiKhoan tk = BUS_TaiKhoan.LayLoaiTaiKhoan(tenTaiKhoan);
                if (tk != null)
                {
                    txtTenTaiKhoan.Text = tk.TenTaiKhoan;
                    txtMatKhau.Text = tk.MatKhau;
                    txtEmail.Text = tk.Email;
                    txtSDT.Text = tk.SDT;
                    txtDiaChi.Text = tk.DiaChi;
                    txtHoTen.Text = tk.HoTen;
                    chkLaAdmin.Checked = tk.LaAdmin;
                    txtAnhDaiDien.Text   = tk.AnhDaiDien;
                    chkTrangThai.Checked = tk.TrangThai;         
                } 
            }
            if (e.CommandName == "XoaTK")
            {
                string tenTaiKhoan = e.CommandArgument.ToString();

                if (BUS_TaiKhoan.XoaTK(tenTaiKhoan))
                {
                    Response.Write("<script>alert('Xóa tài khoản thành công');</script>");
                    LoadDSTaiKhoan();
                }
                else
                {
                    Response.Write("<script>alert('Xóa tài khoản thất bại');</script>");
                }
            }
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            DTO_TaiKhoan tk = new DTO_TaiKhoan();
            tk.TenTaiKhoan = txtTenTaiKhoan.Text;
            if (txtMatKhau.Text != "")
            {
                tk.MatKhau = txtMatKhau.Text;
            }
            tk.Email = txtEmail.Text;
            tk.SDT = txtSDT.Text;
            tk.DiaChi = txtDiaChi.Text;
            tk.HoTen = txtHoTen.Text;
            tk.LaAdmin = tk.LaAdmin;
            tk.AnhDaiDien = tk.AnhDaiDien;
            tk.TrangThai = tk.TrangThai;
            if (BUS_TaiKhoan.ChinhSuaTaiKhoan(tk))
            {
                Response.Write("<script>alert('Chỉnh sửa thành công!')</script>");
                LoadDSTaiKhoan();
            }
            else
            {
                Response.Write("<script>alert('Chỉnh sửa thất bại!')</script>");
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            DTO_TaiKhoan tk = new DTO_TaiKhoan();
            tk.TenTaiKhoan = txtTenTaiKhoan.Text;
            tk.MatKhau = txtMatKhau.Text;
            tk.Email = txtEmail.Text;
            tk.SDT = txtSDT.Text;
            tk.DiaChi = txtDiaChi.Text;
            tk.HoTen = txtHoTen.Text;
            tk.LaAdmin = Convert.ToBoolean(chkLaAdmin.Checked);
            tk.AnhDaiDien = "chuaco.jpg";
            tk.TrangThai = Convert.ToBoolean(chkTrangThai.Checked);
            if (!(tk.TenTaiKhoan == "" || tk.MatKhau == "" || tk.Email == "" || tk.SDT == "" || tk.DiaChi == "" || tk.HoTen == "" || tk.AnhDaiDien == ""))
            {
                if (BUS_TaiKhoan.ThemTaiKhoan(tk))
                {
                    Response.Write("<script>alert('Thêm tài khoản thành công')</script>");
                    LoadDSTaiKhoan();
                }
                else
                {
                    Response.Write("<script>alert('Thêm tài khoản thất bại')</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Chưa nhập đủ thông tin')</script>");

            }
        }
    }
}