using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_GioHang
    {
        private String tenTaiKhoan;

        public String TenTaiKhoan
        {
            get { return tenTaiKhoan; }
            set { tenTaiKhoan = value; }
        }
        private String maSP;

        public String MaSP
        {
            get { return maSP; }
            set { maSP = value; }
        }
        private int soLuong;

        public int SoLuong
        {
            get { return soLuong; }
            set { soLuong = value; }
        }
        public DTO_GioHang()
        {
            SoLuong = 1;
        }
    }
}
