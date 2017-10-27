using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Control btn = Page.Master.FindControl("Button1");
            btn.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text == "admin" && TextBox2.Text == "admin")
        {
            Session["login"] = "admin";
        } else if (TextBox1.Text == "employee" && TextBox2.Text == "emp")
        {
            Session["login"] = "emp";
        } else
        {
            Label3.Text = "Incorrect Credentials";
        }


    }
}