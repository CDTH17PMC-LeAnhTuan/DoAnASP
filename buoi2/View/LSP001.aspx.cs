using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace buoi2.View
{
    public partial class LSP001 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDSSPLoai01();
        }
        protected void LoadDSSPLoai01()
        {
            rptSanPham01.DataSource = BUS_SanPham.LoadDSLoaiSPLoai01();
            rptSanPham01.DataBind();
        }
    }
}