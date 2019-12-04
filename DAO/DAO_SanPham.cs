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
        public static List<DTO_SanPham> LayDSSanPham(string maLoaiSP)
        {
            string query = "SELECT * FROM SanPham WHERE MaLoaiSP = @MaLoaiSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaLoaiSP", maLoaiSP);
            DataTable dtbKetQua = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_SanPham> lstSanPham = new List<DTO_SanPham>();
            foreach (DataRow dr in dtbKetQua.Rows)
            {
                lstSanPham.Add(ConverToDTO(dr));
            }
            return lstSanPham;
        }
        public static DTO_SanPham LaySanPham(string maSP)
        {
            string query = "SELECT * From SanPham WHERE MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaSP", maSP);
            return ConverToDTO(DataProvider.ExecuteSelectQuery(query, param).Rows[0]);
        }
        //
        public static bool KTSPTonTai(string maSP)
        {
            if (maSP== null)
            {
                return false;
            }
            string query = "SELECT COUNT(*) FROM SanPham WHERE MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaSP", maSP);
            return Convert.ToInt32(DataProvider.ExecuteSelectQuery(query, param).Rows[0][0]) == 1;
        }
        //
        public static int ThemSanPham(DTO_SanPham sanPham)
        {
            string query = "INSERT INTO SanPham(MaSP,TenSP,ThongTin,GiaTien,SoLuongTonKho,MaLoaiSP,AnhMinhHoa,TrangThai)"
            + "VALUES (@MaSP,@TenSP,@ThongTin,@GiaTien,@SoLuongTonKho,@MaLoaiSP,@AnhMinhHoa,@TrangThai)";
            SqlParameter[] param = new SqlParameter[8];
            param[0] = new SqlParameter("@MaSP",sanPham.MaSP);
            param[1] = new SqlParameter("@TenSP", sanPham.TenSP);
            param[2] = new SqlParameter("@ThongTin", sanPham.ThongTin);
            param[3] = new SqlParameter("@GiaTien", sanPham.GiaTien);
            param[4] = new SqlParameter("@SoLuongTonKho", sanPham.SoLuongTonKho);
            param[5] = new SqlParameter("@MaLoaiSP", sanPham.MaLoaiSP);
            param[6] = new SqlParameter("@AnhMinhHoa", sanPham.AnhMinhHoa);
            param[7] = new SqlParameter("@TrangThai", sanPham.TrangThai);
            return DataProvider.ExecuteInsertQuery(query, param);
        }
        //
        public static bool ChinhSuaSanPham(DTO_SanPham sanPham)
        {
            string query = "UPDATE TaiKhoan SET TenSP=@TenSP, ThongTin=@ThongTin, GiaTien=@GiaTien, SoLuongTonKho=@SoLuongTonKho, MaLoaiSP = @MaLoaiSP, AnhMinhHoa=@AnhMinhHoa, TrangThai=@TrangThai WHERE MaSP=@MaSP";
            SqlParameter[] param = new SqlParameter[8];
            param[0] = new SqlParameter("@MaSP", sanPham.MaSP);
            param[1] = new SqlParameter("@TenSP", sanPham.TenSP);
            param[2] = new SqlParameter("@ThongTin", sanPham.ThongTin);
            param[3] = new SqlParameter("@GiaTien", sanPham.GiaTien);
            param[4] = new SqlParameter("@SoLuongTonKho", sanPham.SoLuongTonKho);
            param[5] = new SqlParameter("@MaLoaiSP", sanPham.MaLoaiSP);
            param[6] = new SqlParameter("@AnhMinhHoa", sanPham.AnhMinhHoa);
            param[7] = new SqlParameter("@TrangThai", sanPham.TrangThai);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;

        }
        //

        public static bool XoaSanPham(string maSP)
        {
            string query = "UPDATE SanPham SET TrangThai = 0 WHERE MaSP = @MaSP";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@MaSP", maSP);
            return DataProvider.ExecuteUpdateQuery(query, param) == 1;
        }
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai01()
        {
            string query = "SELECT * FROM SanPham A,LoaiSanPham B WHERE A.MaLoaiSP = B.MaLoaiSP AND A.MaLoaiSP='LSP001'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtLoaiSanPham = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_SanPham> lstLoaiSanPham = new List<DTO_SanPham>();
            foreach (DataRow dr in dtLoaiSanPham.Rows)
            {
                lstLoaiSanPham.Add(ConverToDTO(dr));
            }
            return lstLoaiSanPham;
        }
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai02()
        {
            string query = "SELECT * FROM SanPham A,LoaiSanPham B WHERE A.MaLoaiSP = B.MaLoaiSP AND A.MaLoaiSP='LSP002'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtLoaiSanPham = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_SanPham> lstLoaiSanPham = new List<DTO_SanPham>();
            foreach (DataRow dr in dtLoaiSanPham.Rows)
            {
                lstLoaiSanPham.Add(ConverToDTO(dr));
            }
            return lstLoaiSanPham;
        }
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai03()
        {
            string query = "SELECT * FROM SanPham A,LoaiSanPham B WHERE A.MaLoaiSP = B.MaLoaiSP AND A.MaLoaiSP='LSP003'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtLoaiSanPham = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_SanPham> lstLoaiSanPham = new List<DTO_SanPham>();
            foreach (DataRow dr in dtLoaiSanPham.Rows)
            {
                lstLoaiSanPham.Add(ConverToDTO(dr));
            }
            return lstLoaiSanPham;
        }
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai04()
        {
            string query = "SELECT * FROM SanPham A,LoaiSanPham B WHERE A.MaLoaiSP = B.MaLoaiSP AND A.MaLoaiSP='LSP004'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtLoaiSanPham = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_SanPham> lstLoaiSanPham = new List<DTO_SanPham>();
            foreach (DataRow dr in dtLoaiSanPham.Rows)
            {
                lstLoaiSanPham.Add(ConverToDTO(dr));
            }
            return lstLoaiSanPham;
        }
        
        //
        public static List<DTO_SanPham> LoadDSLoaiSPLoai05()
        {
            string query = "SELECT * FROM SanPham A,LoaiSanPham B WHERE A.MaLoaiSP = B.MaLoaiSP AND A.MaLoaiSP='LSP005'";
            SqlParameter[] param = new SqlParameter[0];
            DataTable dtLoaiSanPham = DataProvider.ExecuteSelectQuery(query, param);
            List<DTO_SanPham> lstLoaiSanPham = new List<DTO_SanPham>();
            foreach (DataRow dr in dtLoaiSanPham.Rows)
            {
                lstLoaiSanPham.Add(ConverToDTO(dr));
            }
            return lstLoaiSanPham;
        }
        //
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
