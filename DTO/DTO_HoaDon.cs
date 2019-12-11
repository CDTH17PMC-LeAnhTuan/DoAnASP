using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_HoaDon
    {
        private String maHD;

        public String MaHD
        {
            get { return maHD; }
            set { maHD = value; }
        }
        private String tenTaiKhoan;

        public String TenTaiKhoan
        {
            get { return tenTaiKhoan; }
            set { tenTaiKhoan = value; }
        }
        private DateTime ngayMua;

        public DateTime NgayMua
        {
            get { return ngayMua; }
            set { ngayMua = value; }
        }
        private String diaChiGiaoHang;

        public String DiaChiGiaoHang
        {
            get { return diaChiGiaoHang; }
            set { diaChiGiaoHang = value; }
        }
        private String sdtGiaoHang;

        public String SdtGiaoHang
        {
            get { return sdtGiaoHang; }
            set { sdtGiaoHang = value; }
        }
        private int tongTien;

        public int TongTien
        {
            get { return tongTien; }
            set { tongTien = value; }
        }
        private bool trangThai;

        public bool TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }
        public DTO_HoaDon()
        {
            NgayMua = DateTime.Now;
            TongTien = 0;
            TrangThai = true;
        }
    }
}
