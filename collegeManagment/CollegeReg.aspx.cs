using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace collegeManagment
{
    public partial class CollegeReg : System.Web.UI.Page
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
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"INSERT INTO collegereg (collegename , collegecode , principal,email ,mobile ,password,date) " +
                          "VALUES (@collegename , @collegecode , @principal,@email ,@mobile ,  @password ,getdate() ) ";
            com = new SqlCommand(query, connection);
            // Set parameter values
            com.Parameters.AddWithValue("@collegename", txtcolname.Text.ToString());
            com.Parameters.AddWithValue("@collegecode", txtcolcod.Text);
            com.Parameters.AddWithValue("@principal", txtprincipalname.Text);
            com.Parameters.AddWithValue("@email", txtemail.Text);
            com.Parameters.AddWithValue("@mobile", txtmobile.Text);
            com.Parameters.AddWithValue("@password", txtpassword.Text);


            com.ExecuteNonQuery();
        }
    }
}