using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;
using System.Data;
using System.Data.SqlClient;
namespace BUS
{
    public class BUS_SanPham
    {  
        public static List<DTO_SanPham> LoadDSSanPham()
        {
            return DAO_SanPham.LoadDSSanPham();
        }
        public static List<DTO_SanPham> LayDSSanPham(string maLoaiSP)
        {
            return DAO_SanPham.LayDSSanPham(maLoaiSP);
        }
        public static bool KTSPTonTai(string maSP)
        {
            return DAO_SanPham.KTSPTonTai(maSP);
        }
        //
        public static bool ThemSanPham(DTO_SanPham sp)
        {
            if(!DAO_SanPham.KTSPTonTai(sp.MaSP))
            {
                return DAO_SanPham.ThemSanPham(sp) == 1;
            }
            return false;
        }
        //
        public static bool ChinhSuaSanPham(DTO_SanPham sp)
        {
            if(DAO_SanPham.KTSPTonTai(sp.MaSP))
            {
                return DAO_SanPham.ChinhSuaSanPham(sp);
            }
            return false;
        }
        //
        public static bool XoaSanPham(string maSP)
        {
            return DAO_SanPham.XoaSanPham(maSP);
        }

        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai01()
        {
            return DAO_SanPham.LoadDSLoaiSPLoai01();
        }
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai02()
        {
            return DAO_SanPham.LoadDSLoaiSPLoai02();
        }
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai03()
        {
            return DAO_SanPham.LoadDSLoaiSPLoai03();
        }
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai04()
        {
            return DAO_SanPham.LoadDSLoaiSPLoai04();
        }
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai05()
        {
            return DAO_SanPham.LoadDSLoaiSPLoai05();
        }
        //

        public static DTO_SanPham LaySanPham(string maSP)
        {
            if (KTSPTonTai(maSP))
            {
                return DAO_SanPham.LaySanPham(maSP);
            }
            return null;
        }
        //
        public static DTO_SanPham TimKiemSanPham(string tenSP)
        {
            if (KTSPTonTai(tenSP))
            {
                return DAO_SanPham.TimKiemSP(tenSP);
            }
            return null;
        }
    }
}
