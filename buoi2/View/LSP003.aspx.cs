using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace buoi2.View
{
    public partial class LSP003 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDSSPLoai03();
        }
        protected void LoadDSSPLoai03()
        {
            rptSanPham03.DataSource = BUS_SanPham.LoadDSLoaiSPLoai03();
            rptSanPham03.DataBind();
        }
    }
}