using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AdminScreen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {
            Response.Write("<script>alert('您还没有登陆');location.href='../Login.aspx'</script>");

        }
        else
        {
            SqlConnection Sqlcon;
            String conToSql = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Library.mdf;Integrated Security=True";
            Sqlcon = new SqlConnection(conToSql);
            String query = string.Format("select Level from Administrator where Administrator_ID='{0}'", Session["ID"]);
            SqlCommand cmd = new SqlCommand(query, Sqlcon);
            Sqlcon.Open();
            object ob = cmd.ExecuteScalar();
            if (ob == null)
            {
                Response.Write("<script>alert('您不是管理员');location.href='../Login.aspx'</script>");
                return;
            }
            else
            {
                if (int.Parse(ob.ToString()) == 1)
                    Session["Level"] = 1;
                else
                {
                    Session["Level"] = 2;
                }

            }


        }
    }
}