using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cssWebApp
{
    public partial class Senddata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                {
                DropDownList1.Items.Add("Red");
                DropDownList1.Items.Add("Black");
                DropDownList1.Items.Add("Yellow");
                DropDownList1.Items.Add("Green");
                }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //using querystring

            //Response.Redirect("ApplyColor.aspx?col=" + DropDownList1.SelectedValue);


            //using cookies

            //HttpCookie cookie = new HttpCookie("color");
            //cookie.Value= DropDownList1.SelectedValue.ToString();
            //cookie.Expires = DateTime.Now.AddDays(1);
            //Response.Cookies.Add(cookie);
            //Response.Redirect("ApplyColor.aspx");

            //using session data
            Session["color"] = DropDownList1.SelectedValue;
            Response.Redirect("ApplyColor.aspx");


        }
    }
}