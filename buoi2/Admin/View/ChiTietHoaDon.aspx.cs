using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace buoi2.Admin.View
{
    public partial class ChiTietHoaDon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDSCTHD();
        }
        protected void LoadDSCTHD()
        {
            grvCTHD.DataSource = BUS_CTHoaDon.LoadDSCTHD();
            grvCTHD.DataBind();
        }
    }
}