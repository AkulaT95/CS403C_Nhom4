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
            string sqlStr = "select * from Book", sqlStr2= "select id,password from tblUser union select id,password from Admin union select id, password from Librarian";
            DataTable dt, dt2;
            try
            {
                dt=kn.layDL(sqlStr);
                dt2 = kn.layDL(sqlStr2);
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