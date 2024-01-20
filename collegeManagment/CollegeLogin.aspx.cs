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
    public partial class CollegeLogin : System.Web.UI.Page
    {

        SqlConnection connection=new SqlConnection();
        SqlCommand com;
        SqlDataReader reader;
        string connectionString = ConfigurationManager.AppSettings["mydb"];
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        

        protected void btnlogin_Click(object sender, EventArgs e)
        {

            login();
            //connection = new SqlConnection(connectionString);
            //// Open the connection
            //connection.Open();
            //// Insert data into the database
            //string query = @"select id,collegename,collegecode from collegereg where collegecode=@collegecode and password=@password";
            //com = new SqlCommand(query, connection);
            //com.Parameters.AddWithValue("@collegecode", txtcollegeid.Text.ToString());
            //com.Parameters.AddWithValue("@password", txtpassword.Text.ToString());
            //DataSet ds =new DataSet();
            //SqlDataAdapter sdk = new SqlDataAdapter(com);
            //sdk.Fill(ds);
            //if (ds.Tables[0].Rows.Count>0)
            //{
            //    Session["collegename"] = ds.Tables[0].Rows[0]["collegename"].ToString();
            //    Session["collegeid"] = ds.Tables[0].Rows[0]["id"].ToString();
            //    Session["collegecode"] = ds.Tables[0].Rows[0]["collegecode"].ToString();
            //    Response.Redirect("CollegeAdmin.aspx");
            //}
            //else
            //{
            //    Response.Write(@"<script> 
            //        alert('Invalid College Code /or Password')</script>");
            //}
                    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CollegeReg.aspx");
        }

        protected void login()
        {
            connection = new SqlConnection(connectionString);
            connection.Open();

            string query = @" select id,collegename,collegecode,password from collegereg where collegecode=@collegecode and password=@password";
            com = new SqlCommand(query, connection);

            com.Parameters.AddWithValue("@collegecode", txtcollegeid.Text);
            com.Parameters.AddWithValue("@password", txtpassword.Text);
            DataSet ds = new DataSet();
            SqlDataAdapter sdk = new SqlDataAdapter(com);
            sdk.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["collegename"] =ds.Tables[0].Rows[0]["collegename"].ToString();
                Session["collegeid"] = ds.Tables[0].Rows[0]["id"].ToString();
                Session["collegecode"] = ds.Tables[0].Rows[0]["collegecode"].ToString();
                Session["password"] = ds.Tables[0].Rows[0]["password"].ToString();
                Response.Redirect("CollegeAdmin.aspx");
            }
            else
            {
                Response.Write(@"<script>
                                  alert('Invalid college code or password')</script>");
            }
        }
    }
}