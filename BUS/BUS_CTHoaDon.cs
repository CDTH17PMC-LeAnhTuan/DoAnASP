using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
namespace BUS
{
    public class BUS_CTHoaDon
    {
        public static bool ThemCTHD(DTO_CTHoaDon cthd)
        {
            return DAO_CTHoaDon.ThemCTHD(cthd);
        }
        public static List<DTO_CTHoaDon> LoadDSCTHD()
        {
            return DAO_CTHoaDon.LoadDSCTHD();
        }
    }
    
}
