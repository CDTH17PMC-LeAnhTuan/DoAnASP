using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;
using System.Data.SqlClient;
namespace DAO
{
    public class DAO_GioHang
    {
        public static DataTable LayGH(string tenTaiKhoan)
        {
            string query = "SELECT GH.MaSP,TenSP,GiaTien,SoLuong,ThongTin,GiaTien*SoLuong AS ThanhTien,AnhMinhHoa FROM GioHang GH INNER JOIN SanPham SP ON GH.MaSP = SP.MaSP WHERE TenTaiKhoan = @TenTaiKhoan";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@TenTaiKhoan", tenTaiKhoan);
            return DataProvider.ExecuteSelectQuery(query, param);
        }
        public static DTO_GioHang ConvertToDTO(DataRow dr)
        {
            DTO_GioHang gh = new DTO_GioHang();
            gh.MaSP = dr["MaSP"].ToString();
            gh.TenTaiKhoan = dr["TenTaiKhoan"].ToString();
            gh.SoLuong = Convert.ToInt32(dr["SoLuong"].ToString());
            return gh;
        }
        public static bool KTGH(DTO_GioHang gioHang)
        {
            string query = "SELECT COUNT(*) FROM GioHang WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@TenTaiKhoan", gioHang.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gioHang.MaSP);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;

        }
        public static bool ThemGH(DTO_GioHang gioHang)
        {
            string query = "INSERT INTO GioHang (TenTaiKhoan, MaSP, SoLuong) VALUES (@TenTaiKhoan, @MaSP, @SoLuong)";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@TenTaiKhoan", gioHang.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gioHang.MaSP);
            param[2] = new SqlParameter("@SoLuong", gioHang.SoLuong);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }

        public static bool SuaGH(DTO_GioHang gioHang)
        {
            string query = "UPDATE GioHang SET SoLuong = SoLuong + @SoLuong WHERE TenTaiKhoan = @TenTaiKhoan AND MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[3];
            param[0] = new SqlParameter("@TenTaiKhoan", gioHang.TenTaiKhoan);
            param[1] = new SqlParameter("@MaSP", gioHang.MaSP);
            param[2] = new SqlParameter("@SoLuong", gioHang.SoLuong);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        public static bool XoaGH(string maSP)
        {
            string query = "DELETE FROM GioHang WHERE MaSP=@maSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@maSP", maSP);
            return DataProvider.ExecuteDeleteQuery(query, param) == 1;
        }
    }
}
