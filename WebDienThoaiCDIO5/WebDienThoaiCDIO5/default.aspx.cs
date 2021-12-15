using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDienThoaiCDIO5
{
    public partial class _default : System.Web.UI.Page
    {
        //string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        KetNoi kn = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
                return;
            string sqlStr = "select * from Product";
            DataTable dt = new DataTable();
            try
            {
                dt=kn.layDL(sqlStr);               
            }
            catch (Exception)
            {

                throw;
            }
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}