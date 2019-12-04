using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_CTHoaDon
    {
        private String maHD;

        public String MaHD
        {
            get { return maHD; }
            set { maHD = value; }
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
        private int donGia;

        public int DonGia
        {
            get { return donGia; }
            set { donGia = value; }
        }
        public DTO_CTHoaDon()
        {
            SoLuong = 1;
            DonGia = 0;
        }
    }
}
