using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reader_QueryBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {
            Response.Write("<script>alert('您还没有登陆');location.href='../Login.aspx'</script>");

        }

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        Button tempbutton = (Button)e.Row.FindControl("btnBorrow");
    }
    protected void btnBorrow_Click(object sender, EventArgs e)
    {
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;
        lbltemp.Text = GridView1.Rows[row].Cells[0].Text;


        string conToSql = sqlSourceReader.ConnectionString;
        SqlConnection Sqlcon = new SqlConnection(conToSql);
        String query = string.Format("select NowBook from Reader where Reader_ID='{0}'", Session["ID"].ToString());
        SqlCommand cmd = new SqlCommand(query, Sqlcon);
        String query2 = string.Format("select MaxBook from Reader where Reader_ID='{0}'", Session["ID"].ToString());
        SqlCommand cmd2 = new SqlCommand(query2, Sqlcon);
        Sqlcon.Open();
        object obNow = cmd.ExecuteScalar();
        object obMax=cmd2.ExecuteScalar();
        if(int.Parse(obNow.ToString())<int.Parse(obMax.ToString()))
        {
            sqlSourceBorrow.Insert();
            sqlSourceReader.Update();
            sqlSourceBook.Update();
            Response.Write("<script>alert('成功')</script>");

        }
        else
        {
            Response.Write("<script>alert('超过最大借书本数')</script>");
        }

       
    }
         
}