using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DTO_LoaiSanPham
    {
        private String maLoaiSP;
        private String tenLoaiSP; 
        private bool trangThai;
        public String MaLoaiSP
        {
            get { return maLoaiSP; }
            set { maLoaiSP = value; }
        }
       
        public String TenLoaiSP
        {
            get { return tenLoaiSP; }
            set { tenLoaiSP = value; }
        }
       
        public bool TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }

        public DTO_LoaiSanPham()
        {
            trangThai = true;
        }
        public DTO_LoaiSanPham(String maLoaiSP,String tenLoaiSP,bool trangThai)
        {
            this.MaLoaiSP = maLoaiSP;
            this.TenLoaiSP = tenLoaiSP;
            this.TrangThai = trangThai;
        }
    }
}
