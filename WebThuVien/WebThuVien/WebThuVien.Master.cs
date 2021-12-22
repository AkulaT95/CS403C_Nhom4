using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDienThoaiCDIO5
{
    public partial class WebDienThoai : System.Web.UI.MasterPage
    {
        KetNoi kn = new KetNoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            Debug.WriteLine("Alo");
            if (Page.IsPostBack) return;
            if (Session["username"] != null)
            {
                btnLogin.Disabled = true;
                btnLogin.Visible = false;
                btnProfile.Visible = true;
                btnLogOut.Visible = true;
                btnCart.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strSql = "select * from (select id,password,privilegeID from tblUser union select id,password,privilegeID from Admin union select id,password,privilegeID from Librarian) AS tbl where id='" + txtUser.Value.Trim() + "' and password='" + txtPassword.Value.Trim() + "'";
            DataTable dt = kn.layDL(strSql);
            if (dt.Rows.Count != 0)
            {
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đăng nhập thành công!')", true);
                Debug.WriteLine("Dn thanh cong");
                Session["UserName"] = txtUser.Value.Trim();
                Response.Redirect("default.aspx");
                
            }
            else
            {
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đăng nhập thất bại!')", true);
                Debug.WriteLine("DN that bai");
            }
        }
    }
}