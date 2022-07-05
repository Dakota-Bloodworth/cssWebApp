using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cssWebApp
{
    public partial class DataConnect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DataConnection"].ConnectionString);
                con.Open();
                string query = "insert into Employee values: (@empID,@empName,@location, @designation, @empSalary)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@empID",int.Parse(TextBox1.Text));
                cmd.Parameters.AddWithValue("@empName",TextBox2.Text);
                cmd.Parameters.AddWithValue("@designation",TextBox3.Text);
                cmd.Parameters.AddWithValue("location",TextBox4.Text);
                cmd.Parameters.AddWithValue("empSalary",int.Parse(TextBox5.Text));

                cmd.ExecuteNonQuery();
                Label1.Text = "New Record Added";
                con.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = "Error occured as: "+ ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DataConnection"].ConnectionString);
                con.Open();
                string query = "select*from Employee";
                //SqlCommand cmd = new SqlCommand(query, con);
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();

                Label1.Text = "Data From Database is being viewed";
                con.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = "Error occured as: " + ex.Message;
            }
            
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }
    }
}