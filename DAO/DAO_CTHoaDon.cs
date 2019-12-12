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
        public static List<DTO_CTHoaDon> LoadDSCTHD()
        {
            string query = "SELECT * FROM CTHoaDon";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbHD = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_CTHoaDon> lstCTHoaDon = new List<DTO_CTHoaDon>();
            foreach (DataRow dr in dtbHD.Rows)
            {
                lstCTHoaDon.Add(ConvertToDTO(dr));
            }
            return lstCTHoaDon;
        }
        public static DTO_CTHoaDon ConvertToDTO(DataRow dr)
        {
            DTO_CTHoaDon cthd = new DTO_CTHoaDon();
            cthd.MaHD = dr["MaHD"].ToString();
            cthd.MaSP = dr["MaSP"].ToString();
            cthd.SoLuong = Convert.ToInt32(dr["SoLuong"].ToString());
            cthd.DonGia = Convert.ToInt32(dr["DonGia"].ToString());
            return cthd;
        }
    }
}
