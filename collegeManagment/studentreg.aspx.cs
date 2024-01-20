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
    public partial class studentreg : System.Web.UI.Page
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
                binddropdown();
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"INSERT INTO studentregdb (college,code,collegeid,studentname ,branch, email , mobile,semester ,password ,date) " +
                          "VALUES (@college,@code,@collegeid,@studentname ,@branch, @email , @mobile,@semester ,@password ,getdate() ) ";
            com = new SqlCommand(query, connection);
            // Set parameter values
            com.Parameters.AddWithValue("@college", ddlcollege.SelectedItem.Text);
            com.Parameters.AddWithValue("@studentname", txtstuname.Text.ToString());
            com.Parameters.AddWithValue("@branch", ddlbranch.SelectedItem.Text);
            com.Parameters.AddWithValue("@code", Session["collegecode"].ToString());
            com.Parameters.AddWithValue("@email", txtemail.Text);
            com.Parameters.AddWithValue("@mobile", txtmobile.Text);
            com.Parameters.AddWithValue("@semester", txtsemester.Text);
            com.Parameters.AddWithValue("@password", txtpassword.Text);
            com.Parameters.AddWithValue("@collegeid", Convert.ToInt32(Session["collegeid"]));
            com.ExecuteNonQuery();
            Clear();
        }
        protected void binddropdown()
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"select * from collegereg";
            com = new SqlCommand(query, connection);
            // Set parameter values
            DataSet ds = new DataSet();
            SqlDataAdapter sdk = new SqlDataAdapter(com);
            sdk.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlcollege.DataSource = ds;
                ddlcollege.DataTextField = ds.Tables[0].Columns["collegename"].ToString();
                ddlcollege.DataValueField = ds.Tables[0].Columns["id"].ToString();
                ddlcollege.DataBind();
            }
        }

        protected void ddlcollege_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlbranch.Items.Clear();
            ddlbranch.Items.Add(new ListItem("Please Select", "0"));
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"select * from depdb where College_id=@collegeid and isnull(IsDeleted,0)=0";
            com = new SqlCommand(query, connection);
            // Set parameter values
            com.Parameters.AddWithValue("@collegeid", Convert.ToInt32(ddlcollege.SelectedValue));
            DataSet ds = new DataSet();
            SqlDataAdapter sdk = new SqlDataAdapter(com);
            sdk.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddlbranch.DataSource = ds;
                ddlbranch.DataTextField = ds.Tables[0].Columns["deptname"].ToString();
                ddlbranch.DataValueField = ds.Tables[0].Columns["dep_id"].ToString();
                ddlbranch.DataBind();
            }
            string query1 = @"select * from collegereg where id=@collegeid";
            com = new SqlCommand(query1, connection);
            com.Parameters.AddWithValue("@collegeid", Convert.ToInt32(ddlcollege.SelectedValue));
            com.ExecuteNonQuery();
            DataSet ds1 = new DataSet();
            SqlDataAdapter sdk1 = new SqlDataAdapter(com);
            sdk1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                Session["collegecode"] = ds1.Tables[0].Rows[0]["collegecode"].ToString();
                Session["collegeid"] = ds1.Tables[0].Rows[0]["id"].ToString();
            }
        }

        protected void Clear()
        {
            ddlcollege.SelectedValue = "0";
            ddlbranch.Items.Clear();
            ddlbranch.Items.Add(new ListItem("Please Select", "0"));
            txtemail.Text = string.Empty;
            txtmobile.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtemail.Text = string.Empty;
            txtemail.Text = string.Empty;
        }
    }
}