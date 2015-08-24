using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reader_BackBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {
            Response.Write("<script>alert('您还没有登陆');location.href='../Login.aspx'</script>");

        }
        if (GridView1.Rows.Count == null)
        {
            Response.Write("<script>alert('没有借书')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
        lbltemp.Text = GridView1.Rows[row].Cells[1].Text;

        
      
      
            sqlSourceBorrow.Delete();
            sqlSourceReader.Update();
            sqlSourceBook.Update();
            Response.Write("<script>alert('成功')</script>");
            sqlSourceBorrow.DataBind();
            sqlSourceReader.DataBind();
            sqlSourceBook.DataBind();
    
        


            

    }
}