using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace collegeManagment
{
    public partial class News : System.Web.UI.Page
    {
        SqlConnection connection;
        SqlCommand com;
        SqlDataReader reader;
        string connectionString = ConfigurationManager.AppSettings["mydb"];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblcolcode.Text = Session["collegecode"].ToString();
                lblcollegename.Text = Session["collegename"].ToString();
            }
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            show();

        }

        protected void show()
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();

            string q = "select * from newsdb where collegeid=" + Convert.ToInt32(Session["collegeid"]);
            com = new SqlCommand(q, connection);

            reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            reader.Close();
        }

        //protected void btndelete_Click(object sender, EventArgs e)
        //{
        //    int id = Int32.Parse(e.CommandArgument.ToString());
        //    connection = new SqlConnection(connectionString);
        //    // Open the connection
        //    connection.Open();

        //    string q = @"delete from newsdb where user_id=" + id;
        //    com = new SqlCommand(q, connection);
        //    com.ExecuteNonQuery();
        //}

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"INSERT INTO newsdb (collegeid,collegecode,collegename , newstitle , message) 
                          VALUES (@collegeid,@collegecod,@collegename ,@newstital,@message ) ";
            com = new SqlCommand(query, connection);
            // Set parameter values
            com.Parameters.AddWithValue("@collegeid", Convert.ToInt32(Session["collegeid"]));
            com.Parameters.AddWithValue("@collegecod", lblcolcode.Text);
            com.Parameters.AddWithValue("@collegename", lblcollegename.Text);
            com.Parameters.AddWithValue("@newstital", txttitle.Text);
            com.Parameters.AddWithValue("@message", txtmessage.Text);


            com.ExecuteNonQuery();
            show();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Int32.Parse(btn.CommandArgument);
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();

            string q = @"delete from newsdb where newsid=" + id;
            com = new SqlCommand(q, connection);
            com.ExecuteNonQuery();
            show();
        }

        protected void btnedite_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Int32.Parse(btn.CommandArgument);
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            string title = "";
            string massege = "";
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            foreach (GridViewRow item in GridView1.Rows)
            {
                Button it = item.FindControl("btnedite") as Button;
                int gridid = Int32.Parse(it.CommandArgument);
                if (gridid == id)
                {
                    title = ((TextBox)item.FindControl("txttital") as TextBox).Text.ToString();
                    massege = ((TextBox)item.FindControl("txtmessage") as TextBox).Text.ToString();
                    break;
                }
            }
            string q = @"update  newsdb set newstitle=@newstitle,message=@message where newsid=" + id;
            com = new SqlCommand(q, connection);
            com.Parameters.AddWithValue("@newstitle", title);
            com.Parameters.AddWithValue("@message", massege);

            com.ExecuteNonQuery();
            show();
        }
    }
}