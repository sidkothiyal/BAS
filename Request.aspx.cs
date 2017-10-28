using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string title = TextBox1.Text;
        string author = TextBox2.Text;
        string edition = TextBox3.Text;
        string email = TextBox4.Text;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["BAS"].ConnectionString;
        string cnt = "select count(*) as cnt from requests";
        SqlCommand cmd1 = new SqlCommand(cnt, con);
        con.Open();
        SqlDataReader rd = cmd1.ExecuteReader();
        int count = 0;
        while (rd.Read())
        {
            int.TryParse(rd["cnt"].ToString(), out count);
        }
        rd.Close();
        string insert = "Insert into requests (id, title, author, edition, email_id) values (\'" + (count + 1).ToString() + "\', \'" + title + "\', \'" + author + "\', \'" + edition + "\', \'" + email + "\' )";
        SqlCommand cmd = new SqlCommand(insert, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Home.aspx");
    }
}