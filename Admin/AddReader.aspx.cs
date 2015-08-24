using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddReader : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Level"] == null)
        {
            Response.Write("<script>alert('非法访问');location.href='../Login.aspx'</script>");
        }
    }

    protected void cvIfExist_ServerValidate(object source, ServerValidateEventArgs args)
    {
        sqlSourcePersonnel.DataBind();
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        {
            lblPassword.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text.Trim(), "MD5").ToLower();
            sqlSourcePersonnel.Insert();
            sqlSourceReader.Insert();
            sqlSourceLogin.Insert();
            Response.Write("<script>alert('插入成功')</script>");
        }
    }
}