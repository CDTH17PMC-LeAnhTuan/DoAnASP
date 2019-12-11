using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace buoi2.Admin.View
{
    public partial class QuanLyLoaiSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDSLoaiSP();
            }
        }
        protected void LoadDSLoaiSP()
        {
            grvLoaiSanPham.DataSource = BUS_LoaiSanPham.LoadDSLoaiSP();
            grvLoaiSanPham.DataBind();
        }
    }
}