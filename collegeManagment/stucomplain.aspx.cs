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
    public partial class stucomplain : System.Web.UI.Page
    {

        SqlConnection connection;
        SqlCommand com;
        SqlDataReader reader;
        string connectionString = ConfigurationManager.AppSettings["mydb"];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtdate.Text = DateTime.Now.ToString();
                txtcolname.Text = Session["studcollege"].ToString();
                txtstuname.Text = Session["studname"].ToString();
                txtemail.Text = Session["studmail"].ToString();
                txtbranch.Text = Session["branch"].ToString();

            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"INSERT INTO complaintdb (stuid,collegeid,depid,studentname , college , branch,email ,complaintto ,message,date) " +
                          "VALUES (@studenid,@collegeid,@depid,@stuname ,@collegename,@branch, @email , @compto,@msg,getdate() ) ";
            com = new SqlCommand(query, connection);
            // Set parameter values
            com.Parameters.AddWithValue("@studenid", Convert.ToInt32(Session["studid"]));
            com.Parameters.AddWithValue("@collegeid", Convert.ToInt32(Session["collegeid"]));
            com.Parameters.AddWithValue("@stuname", txtstuname.Text);
            com.Parameters.AddWithValue("@collegename", txtcolname.Text);
            com.Parameters.AddWithValue("@branch", txtbranch.Text);
            com.Parameters.AddWithValue("@email", txtemail.Text);
            com.Parameters.AddWithValue("@compto", ddlcomplainto.SelectedItem.Text);
            com.Parameters.AddWithValue("@msg", txtmessage.Text);
            com.Parameters.AddWithValue("@depid", Convert.ToInt32(Session["depid"].ToString()));


            com.ExecuteNonQuery();
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {

            show();
        }

        protected void show()
        {
            DataSet ds = new DataSet();
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();

            string q = "select * from complaintdb where stuid=" + Convert.ToInt32(Session["studid"]);
            com = new SqlCommand(q, connection);
            SqlDataAdapter sdk = new SqlDataAdapter(com);
            sdk.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            try
            {
                Button btn = (Button)sender;
                int id = Int32.Parse(btn.CommandArgument);

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string q = "DELETE FROM complaintdb WHERE id = @id";
                    using (SqlCommand com = new SqlCommand(q, connection))
                    {
                        com.Parameters.AddWithValue("@id", id);
                        com.ExecuteNonQuery();
                    }
                }

                // Refresh the GridView after deletion
                show();
            }
            catch (Exception ex)
            {
                // Handle exceptions, log, or display an error message.
            }
        }
    }
}