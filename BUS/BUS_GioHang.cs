using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;
using DAO;
namespace BUS
{
    public class BUS_GioHang
    {
        public static DataTable LayGH(string tenTaiKhoan)
        {
            return DAO_GioHang.LayGH(tenTaiKhoan);
        }
        public static int TinhTongTienGH(string tenTaiKhoan)
        {
            DataTable dtbKetQua = DAO_GioHang.LayGH(tenTaiKhoan);
            int tongTien = 0;
            foreach(DataRow dr in dtbKetQua.Rows)
            {
                tongTien += Convert.ToInt32(dr["ThanhTien"]);
            }
            return tongTien;
        }

        public static bool ThemGioHang(DTO_GioHang gioHang)
        {
            if(DAO_GioHang.KTGH(gioHang))
            {
                return DAO_GioHang.SuaGH(gioHang);
            }
            else
            {
                return DAO_GioHang.ThemGH(gioHang);
            }
        }
        public static bool XoaGioHang(string maSP)
        {          
                return DAO_GioHang.XoaGH(maSP);      
        }
    }
}
