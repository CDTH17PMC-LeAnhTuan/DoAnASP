using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace buoi2.View
{
    public partial class LSP004 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDSSPLoai04();
        }
        protected void LoadDSSPLoai04()
        {
            rptSanPham04.DataSource = BUS_SanPham.LoadDSLoaiSPLoai04();
            rptSanPham04.DataBind();
        }
    }
}