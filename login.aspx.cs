using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("let", "n");
        lblMsg.Visible = false;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string query = "select * from users where username=@UN and password=@PW";
        SqlDataAdapter adapter = new SqlDataAdapter();
        adapter.SelectCommand = new SqlCommand(query, Connection.Set_Con());
        adapter.SelectCommand.Parameters.AddWithValue("@UN", tbxUN.Text);
        adapter.SelectCommand.Parameters.AddWithValue("@PW", tbxPW.Text);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "users");

        int n = ds.Tables["users"].Rows.Count;
        if (n == 0)
        {
            lblMsg.Visible = true;
            lblMsg.Text = "نام کاربری یا کلمه عبور ا شتباه است.";
            return;
        }
        Session["let"] = "y";
        string userID = ds.Tables["users"].Rows[0]["id"].ToString();
        Response.Redirect("main.aspx?userID=" + userID);
    }
}