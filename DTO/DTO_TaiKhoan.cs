using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_TaiKhoan
    {
        private String tenTaiKhoan;
        private String matKhau;
        private String email;
        private String Sdt;
        private String diaChi;
        private String hoTen;
        private bool laAdmin;
        private String anhDaiDien;
        private bool trangThai;

        public String TenTaiKhoan
        {
            get { return tenTaiKhoan; }
            set { tenTaiKhoan = value; }
        }
        public String MatKhau
        {
            get { return matKhau; }
            set { matKhau = value; }
        }
        public String Email
        {
            get { return email; }
            set { email = value; }
        }
        public String SDT
        {
            get { return Sdt; }
            set { Sdt = value; }
        }
        public String DiaChi
        {
            get { return diaChi; }
            set { diaChi = value; }
        }
        public String HoTen
        {
            get { return hoTen; }
            set { hoTen = value; }
        }
        public bool LaAdmin
        {
            get { return laAdmin; }
            set { laAdmin = value; }
        }
        public String AnhDaiDien
        {
            get { return anhDaiDien; }
            set { anhDaiDien = value; }
        }
        public bool TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }
        // Constructor
        public DTO_TaiKhoan()
        {
            LaAdmin = false;
            AnhDaiDien = "hello.jpg";
            TrangThai = true;
        }
        public DTO_TaiKhoan(String tenTaiKhoan, String matKhau, String email, String Sdt, String diaChi, String hoTen, bool laAdmin, String anhDaiDien, bool trangThai)
        {
            this.TenTaiKhoan = tenTaiKhoan;
            this.MatKhau = matKhau;
            this.Email = email;
            this.SDT = Sdt;
            this.DiaChi = diaChi;
            this.HoTen = hoTen;
            this.LaAdmin = laAdmin;
            this.AnhDaiDien = anhDaiDien;
            this.TrangThai = trangThai;
        }
    }
}
