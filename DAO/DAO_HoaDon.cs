using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Data;

namespace DAO
{
    public class DAO_HoaDon
    {
        public static string LayMaHDLonNhat()
        {
            string query = "SELECT MAX(MaHD) FROM HoaDon";
            SqlParameter[] param = new SqlParameter[0];
            return DataProvider.ExecuteSelectQuery(query, param).Rows[0][0].ToString();
        }
        public static bool ThemHD(DTO_HoaDon hd)
        {
            string query = "INSERT INTO HoaDon (MaHD, TenTaiKhoan, NgayMua, DiaChiGiaoHang, SDTGiaoHang, TongTien, TrangThai) VALUES (@MaHD, @TenTaiKhoan, @NgayMua, @DiaChiGiaoHang, @SDTGiaoHang, @TongTien, @TrangThai)";
            SqlParameter[] param = new SqlParameter[7];
            param[0] = new SqlParameter("@MaHD", hd.MaHD);
            param[1] = new SqlParameter("@TenTaiKhoan", hd.TenTaiKhoan);
            param[2] = new SqlParameter("@NgayMua", hd.NgayMua);
            param[3] = new SqlParameter("@DiaChiGiaoHang", hd.DiaChiGiaoHang);
            param[4] = new SqlParameter("@SDTGiaoHang", hd.SdtGiaoHang);
            param[5] = new SqlParameter("@TongTien", hd.TongTien);
            param[6] = new SqlParameter("@TrangThai", hd.TrangThai);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }
    }
}
