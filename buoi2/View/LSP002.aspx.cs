using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace buoi2.View
{
    public partial class LSP002 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDSSPLoai02();
        }
        protected void LoadDSSPLoai02()
        {
            rptSanPham02.DataSource = BUS_SanPham.LoadDSLoaiSPLoai02();
            rptSanPham02.DataBind();
        }
    }
}