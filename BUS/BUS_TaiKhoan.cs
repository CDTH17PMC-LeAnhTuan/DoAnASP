using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
//using System.Security.Cryptography;
using DAO;
using DTO;
namespace BUS
{
    public class BUS_TaiKhoan
    {
        //
        public static DataTable LayTaiKhoan(string tenTaiKhoan)
        {
            
                return DAO_TaiKhoan.LayTaiKhoan(tenTaiKhoan);
         
        }
        //
        public static bool DangNhap(string tenTaiKhoan,string matKhau)
        {
            return DAO_TaiKhoan.DangNhap(tenTaiKhoan, matKhau);
        }
        //
        public static bool DangKy(DTO_TaiKhoan tk)
        {
            return DAO_TaiKhoan.DangKy(tk);
        }
        //
        public static List<DTO_TaiKhoan> DLoadDSTaiKhoan()
        {
            return DAO_TaiKhoan.LoadDSTaiKhoan();
        }
        //
        public static bool ThemTaiKhoan(DTO_TaiKhoan tk)
        {
            if (!DAO_TaiKhoan.KTTenTaiKhoan(tk.TenTaiKhoan))
            {
                return DAO_TaiKhoan.ThemTaiKhoan(tk) == 1;
            }
            return false;
        }
        //
        public static bool ChinhSuaTaiKhoan(DTO_TaiKhoan tk)
        {
            if (DAO_TaiKhoan.KTTenTaiKhoan(tk.TenTaiKhoan))
            {
                return DAO_TaiKhoan.ChinhSuaTaiKhoan(tk);
            }
            else
            {
                return false;
            }
        }
        //
        public static bool XoaTK(string tenTK)
        {
            if (!DAO_TaiKhoan.KTTenTaiKhoan(tenTK))
            {
                return false;
            }
            else
            {
                return DAO_TaiKhoan.XoaTK(tenTK);
            }
        }
        //
        public static DTO_TaiKhoan LayLoaiTaiKhoan(string  tenTaiKhoan)
        {
            if(DAO_TaiKhoan.KTTenTaiKhoan(tenTaiKhoan))
            {
                return DAO_TaiKhoan.LayLoaiTaiKhoan(tenTaiKhoan);
            }
            return null;
        }
        //
        //public static string MaHoaMatKhau(string input)
        //{
        //    MD5 md5 = MD5.Create();
        //    Byte[] data = md5.ComputeHash(Encoding.UTF8.GetBytes(input));
        //    StringBuilder result = new StringBuilder();
        //    for (int i = 0; i < data.Length; i++)
        //    {
        //        result.Append(data[i].ToString("x2"));

        //    }
        //    return result.ToString();
        //}
    }
}

