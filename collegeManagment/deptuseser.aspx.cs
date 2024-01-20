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
    public partial class deptuseser : System.Web.UI.Page
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
            txtcolname.Text = Session["collegename"].ToString();
            txtcollegecode.Text = Session["collegecode"].ToString();
        }

        protected void insertquery()
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"INSERT INTO depuser(dep_id,college_id,collegename,collegecod, username,userid, password, deptname,date) 
                values(@dep_id,@college_id,@collegename, @collegecod,@username,@userid, @password, @deptname,getdate())";
            com = new SqlCommand(query, connection);

            com.Parameters.AddWithValue("@dep_id", Convert.ToInt32(ddldepname.SelectedValue).ToString());
            com.Parameters.AddWithValue("@college_id", Convert.ToInt32(Session["collegeid"]));
            com.Parameters.AddWithValue("@collegename", txtcolname.Text.ToString());
            com.Parameters.AddWithValue("@collegecod", txtcollegecode.Text);
            com.Parameters.AddWithValue("@username", txtusername.Text);
            com.Parameters.AddWithValue("@userid", txtid.Text);
            com.Parameters.AddWithValue("@password", txtpassword.Text);
            com.Parameters.AddWithValue("@deptname", ddldepname.SelectedItem.Text);

            com.ExecuteNonQuery();
        }
        protected void binddropdown()
        {
            DataSet ds = new DataSet();
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Select data into the database
            string query = @"select dep_id,deptname from depdb where IsDeleted=0 and college_id=" + Convert.ToInt32(Session["collegeid"]);
            com = new SqlCommand(query, connection);
            SqlDataAdapter sdk = new SqlDataAdapter(com);
            sdk.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ddldepname.DataSource = ds;
                ddldepname.DataTextField = ds.Tables[0].Columns["deptname"].ToString();
                ddldepname.DataValueField = ds.Tables[0].Columns["dep_id"].ToString();
                ddldepname.DataBind();
            }

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            insertquery();
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            show(0);
            DataSet dset = new DataSet();
            string query = @"select us.dep_id,us.deptname from depuser us inner join depdb dp on (us.dep_id=dp.dep_id) where IsDeleted=0 and us.college_id=" + Convert.ToInt32(Session["collegeid"]);
            com = new SqlCommand(query, connection);
            SqlDataAdapter sdk = new SqlDataAdapter(com);
            sdk.Fill(dset);
            if (dset.Tables[0].Rows.Count > 0)
            {
                ddlselectdep.DataSource = dset;
                ddlselectdep.DataTextField = dset.Tables[0].Columns["deptname"].ToString();
                ddlselectdep.DataValueField = dset.Tables[0].Columns["dep_id"].ToString();
                ddlselectdep.DataBind();
            }
        }

        protected void show(int id)
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            string q = "";
            if (id == 0)
            {
                q = "select * from depuser where college_id=" + Convert.ToInt32(Session["collegeid"]);
            }
            else
            {
                q = "select * from depuser where college_id=" + Convert.ToInt32(Session["collegeid"]) + "and dep_id=" + id;
            }
            com = new SqlCommand(q, connection);

            reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            reader.Close();
            fiddiv.Visible = true;
        }
        protected void btnfind_Click(object sender, EventArgs e)
        {

            show(Convert.ToInt32(ddlselectdep.SelectedValue));

        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Int32.Parse(btn.CommandArgument);
            string userid = "";
            string username = "";
            string pass = "";
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            foreach (GridViewRow item in GridView1.Rows)
            {
                Button it = item.FindControl("btnedit") as Button;
                int gridid = Int32.Parse(it.CommandArgument);
                if (gridid == id)
                {
                    userid = ((TextBox)item.FindControl("txtuserid") as TextBox).Text.ToString();
                    username = ((TextBox)item.FindControl("txtfacultyname") as TextBox).Text.ToString();
                    pass = ((TextBox)item.FindControl("txtpassword") as TextBox).Text.ToString();
                    break;
                }
            }
            string q = @"update  depuser set username=@username,userid=@userid,password=@password where user_id=@user_id";
            com = new SqlCommand(q, connection);
            com.Parameters.AddWithValue("@username", username);
            com.Parameters.AddWithValue("@userid", userid);
            com.Parameters.AddWithValue("@password", pass);
            com.Parameters.AddWithValue("@user_id", Convert.ToInt32(id));

            com.ExecuteNonQuery();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Int32.Parse(btn.CommandArgument);
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();

            string q = @"delete from depuser where user_id=" + id;
            com = new SqlCommand(q, connection);
            com.ExecuteNonQuery();
            show(0);
        }
    }
}