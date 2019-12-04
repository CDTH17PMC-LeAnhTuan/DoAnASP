using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace buoi2.View
{
    public partial class LSP005 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDSSPLoai05();
        }
        protected void LoadDSSPLoai05()
        {
            rptSanPham05.DataSource = BUS_SanPham.LoadDSLoaiSPLoai05();
            rptSanPham05.DataBind();
        }

    }
}