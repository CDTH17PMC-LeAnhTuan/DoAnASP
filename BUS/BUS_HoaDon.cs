using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;
namespace BUS
{
    public class BUS_HoaDon
    {
        public static List<DTO_HoaDon> LoadDSHD()
        {
            return DAO_HoaDon.LoadDSHD();
        }
        public static string ThemHD(DTO_HoaDon hd)
        {
            try
            {
                hd.MaHD = (Convert.ToInt32(DAO_HoaDon.LayMaHDLonNhat()) + 1).ToString("000");
            }
            catch (FormatException e)
            {
                hd.MaHD = "001";
            }
            if (DAO_HoaDon.ThemHD(hd))
            {
                return hd.MaHD;
            }
            else
            {
                return null;
            }
        }
    }
}
