using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_SanPham
    {
        private String maSP;
        private String tenSP;
        private String thongTin;
        private int giaTien;
        private String maLoaiSP;
        private int soLuongTonKho;
        private String anhMinhHoa;
        private bool trangThai;
        public String MaSP
        {
            get { return maSP; }
            set { maSP = value; }
        }


        public String TenSP
        {
            get { return tenSP; }
            set { tenSP = value; }
        }
        public String ThongTin
        {
            get { return thongTin; }
            set { thongTin = value; }
        }
        public int GiaTien
        {
            get { return giaTien; }
            set { giaTien = value; }
        }
        public int SoLuongTonKho
        {
            get { return soLuongTonKho; }
            set { soLuongTonKho = value; }
        }
        public String MaLoaiSP
        {
            get { return maLoaiSP; }
            set { maLoaiSP = value; }
        }
        public String AnhMinhHoa
        {
            get { return anhMinhHoa; }
            set { anhMinhHoa = value; }
        }
        public bool TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }
        public DTO_SanPham()
        {
            soLuongTonKho = 50;
            anhMinhHoa = "chuaco.jpg";
            trangThai = true;
        }
          public DTO_SanPham(String maSP, String tenSP, String thongTin, int giaTien, String maLoaiSP, int soLuongTonKho,  String anhDaiDien, bool trangThai)
        {
            this.MaSP = maSP;
            this.TenSP = tenSP;
            this.ThongTin = thongTin;
            this.GiaTien = giaTien;
            this.MaLoaiSP = maLoaiSP;
            this.SoLuongTonKho = soLuongTonKho;
            this.AnhMinhHoa = anhMinhHoa;
            this.trangThai = TrangThai;
        }
    }
}
