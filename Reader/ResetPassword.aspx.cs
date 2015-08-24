using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reader_ResetPassword : System.Web.UI.Page
{
    SqlConnection Sqlcon;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {
            Response.Write("<script>alert('您还没有登陆');location.href='../Login.aspx'</script>");

        }
        String conToSql = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Library.mdf;Integrated Security=True";
        Sqlcon = new SqlConnection(conToSql);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String query = string.Format("select User_ID from LoginSystem where User_ID='{0}' and Password='{1}'", Session["ID"], FormsAuthentication.HashPasswordForStoringInConfigFile(txtOld.Text.Trim(), "MD5").ToLower());
        SqlCommand cmd = new SqlCommand(query, Sqlcon);
        Sqlcon.Open();
        object ob = cmd.ExecuteScalar();
        if (ob == null)
        {
            Response.Write("<script>alert('原密码不对')</script>");
            return;
        }
        else
        {
            lblcode.Text=FormsAuthentication.HashPasswordForStoringInConfigFile(txtNew.Text.Trim(), "MD5").ToLower();
            sqlSourceLogin.Update();
        }
        
    }
}