using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace buoi2.Admin.View
{
    public partial class ShowProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                LoadDSSanPham();
            }
        }

        protected void LoadDSSanPham()
        {
            grvDSProduct.DataSource = BUS_SanPham.LoadDSSanPham();
            grvDSProduct.DataBind();
        }
    }
}