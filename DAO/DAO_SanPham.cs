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
    public class DAO_SanPham
    {
        public static List<DTO_SanPham> LoadDSSanPham()
        {
            string query = "SELECT * FROM SanPham";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtbSanPham = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_SanPham> lsSanPham = new List<DTO_SanPham>();
            foreach( DataRow dr in dtbSanPham.Rows )
            {
                lsSanPham.Add(ConverToDTO(dr));
            }
            return lsSanPham;
        }
        public static DTO_SanPham ConverToDTO(DataRow dr)
        {
            DTO_SanPham sp = new DTO_SanPham();
            sp.MaSP = dr["MaSP"].ToString();
            sp.TenSP = dr["TenSP"].ToString();
            sp.ThongTin = dr["ThongTin"].ToString();
            sp.GiaTien = Int32.Parse(dr["GiaTien"].ToString());
            sp.SoLuongTonKho = Convert.ToInt32(dr["SoLuongTonKho"].ToString());
            sp.MaLoaiSP = dr["MaLoaiSP"].ToString();
            sp.AnhMinhHoa = dr["AnhMinhHoa"].ToString();
            sp.TrangThai = bool.Parse(dr["TrangThai"].ToString());
            return sp;
        }
    }
}
