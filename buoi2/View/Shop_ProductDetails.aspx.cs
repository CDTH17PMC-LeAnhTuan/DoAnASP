using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace buoi2
{
    public partial class Shop_ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string masp = Request.QueryString["masp"];
            if (!BUS_SanPham.KTSPTonTai(masp))
            {
                Response.Redirect("Shop_Product.aspx");
            }
            else
            {
                DTO_SanPham sp = BUS_SanPham.LaySanPham(masp);
                imgAnhMinhHoa.ImageUrl = "images/shop/" + sp.AnhMinhHoa;
                lblTenSP.Text = sp.TenSP;
                lblGiaTien.Text = sp.GiaTien + "$";
            }

        }
    }
}