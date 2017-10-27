using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null)
        {
            if(Session["login"].ToString() != "") { 
                Button1.Text = "Logout";
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Button1.Text == "Admin")
        {
            Response.Redirect("Login.aspx");
        } else if(Button1.Text == "Logout")
        {
            Session["login"] = "";
            Button1.Text = "Admin";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String url = "Result.aspx?";
        url += "type=" + Server.UrlEncode(RadioButtonList1.SelectedItem.Value) + "&";
        url += "search=" + Server.UrlEncode(TextBox1.Text);
        Response.Redirect(url);
    }
}
