using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace cssWebApp
{
    public partial class ApplyColor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //var color = Color.FromName(Request.QueryString["col"].ToString());
            //Panel2.BackColor = color;

            //if (Request.Cookies["color"]!=null)
            //{
            //    Color selectedcolor = Color.FromName(Request.Cookies["color"].Value.ToString());
            //        Panel2.BackColor = selectedcolor;
            //}

            if (Session["color"]!=null)
            {
                Color selectedcolor = Color.FromName(Session["color"].ToString());
                Panel2.BackColor = selectedcolor;
            }
        }
    }
}