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
    }
}
