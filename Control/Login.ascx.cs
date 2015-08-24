using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;   

public partial class Wizard_Login : System.Web.UI.UserControl
{
    SqlConnection Sqlcon;
    protected void Page_Load(object sender, EventArgs e)
    {
        String conToSql="Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Library.mdf;Integrated Security=True";
        Sqlcon = new SqlConnection(conToSql);
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
         String query=string.Format("select User_ID from LoginSystem where User_ID='{0}' and Password='{1}'",txtID.Text.Trim(),FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text.Trim(), "MD5").ToLower());
         SqlCommand cmd=new SqlCommand(query,Sqlcon);
         Sqlcon.Open();
         object ob=cmd.ExecuteScalar();
        if(ob==null)
        {
            
            Response.Write("<script>alert('借书证号和密码不符或者您不是本学校注册用户，如有疑问请联系教务处')</script>");
            return;

        }
        else
            if(ddpType.SelectedValue=="Reader")
            {
                
                Session["ID"] = ob.ToString();
                Response.Redirect("/Reader/ReaderScreen.aspx");
           

            }
            else
            {
                Session["ID"] = ob.ToString();
                Response.Redirect("/Admin/AdminScreen.aspx");
            }
        Sqlcon.Close();

    }
}