using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace DAO
{
    public class DAO_LoaiSanPham
       
    {
        public static List<DTO_LoaiSanPham> LayDSLoaiSP()
        {
            string query = "SELECT * FROM LoaiSanPham";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtLoaiSanPham = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_LoaiSanPham> lstLoaiSanPham = new List<DTO_LoaiSanPham>();
            foreach(DataRow dr in dtLoaiSanPham.Rows)
            {
                lstLoaiSanPham.Add(ConverToDTO(dr));
            }
            return lstLoaiSanPham;
        }
        public static DTO_LoaiSanPham ConverToDTO(DataRow dr)
        {
            DTO_LoaiSanPham lsp = new DTO_LoaiSanPham();
            lsp.MaLoaiSP = dr["MaLoaiSP"].ToString();
            lsp.TenLoaiSP = dr["TenLoaiSP"].ToString();
            lsp.TrangThai = bool.Parse(dr["TrangThai"].ToString());
            return lsp;
        }
    }
}
