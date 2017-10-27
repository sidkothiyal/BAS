using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["BAS"].ConnectionString;

        if (!IsPostBack)
        {   if(Session["login"] != null) { 
                if(Session["login"].ToString() == "admin" || Session["login"].ToString() == "emp")
                {
                    Button1.Visible = true;
                    Button2.Visible = true;
                }
            }
            String sel = "Select title, edition, author, price, location, no_left as Copies from book where " + Server.UrlDecode(Request.QueryString["type"]) + "  like \'%" + Server.UrlDecode(Request.QueryString["search"]) + "%\'" ;
            SqlCommand cmd = new SqlCommand(sel, con);
            DataSet ds = new DataSet();
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(ds, "book");
            con.Close();
            gv.DataSource = ds;
            gv.AutoGenerateColumns = true;
            this.DataBind();


        }
    }
}