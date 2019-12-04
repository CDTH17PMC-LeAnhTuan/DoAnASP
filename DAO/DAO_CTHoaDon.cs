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
    public class DAO_CTHoaDon
    {
        public static bool ThemCTHD(DTO_CTHoaDon cthd)
        {
            string query = "INSERT INTO CTHoaDon (MaHD, MaSP, SoLuong, DonGia) VALUES (@MaHD, @MaSP, @SoLuong, @DonGia)";
            SqlParameter[] param = new SqlParameter[4];
            param[0] = new SqlParameter("@MaHD", cthd.MaHD);
            param[1] = new SqlParameter("@MaSP", cthd.MaSP);
            param[2] = new SqlParameter("@SoLuong", cthd.SoLuong);
            param[3] = new SqlParameter("@DonGia", cthd.DonGia);
            return DataProvider.ExecuteInsertQuery(query, param) == 1;
        }
    }
}
