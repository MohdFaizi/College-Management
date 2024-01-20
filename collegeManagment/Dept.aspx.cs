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
    public partial class Dept : System.Web.UI.Page
    {

        SqlConnection connection;
        SqlCommand com;
        SqlDataReader reader;

        string connectionString = ConfigurationManager.AppSettings["mydb"];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btndelete.Visible = false;
            }
            txtcolname.Text = Session["collegename"].ToString();
            txtcolcode.Text = Session["collegecode"].ToString();
        }

        protected void insertquery()
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            // Insert data into the database
            string query = @"INSERT INTO depdb(college_id,collegename,collegecode, deptname) values(@collegeid,@collegename, @collegecode, @deptname)";
            com = new SqlCommand(query, connection);

            com.Parameters.AddWithValue("@collegeid", Convert.ToInt32(Session["collegeid"]));
            com.Parameters.AddWithValue("@collegename", txtcolname.Text.ToString());
            com.Parameters.AddWithValue("@collegecode", txtcolcode.Text);
            com.Parameters.AddWithValue("@deptname", txtdepname.Text);

            com.ExecuteNonQuery();
        }




        protected void btndelete_Click(object sender, EventArgs e)
        {

            foreach(GridViewRow grow in GridView1.Rows)
            {
                CheckBox check = (CheckBox)grow.FindControl("CheckBox1");
                if (check.Checked)
                {
                    int temp=Convert.ToInt32(((Label)grow.FindControl("lblsrno") as Label).ToolTip.ToString());
                    deleterecord(temp);
                }
                showdata();
            }












            //foreach (GridViewRow grow in GridView1.Rows)
            //{
            //    //Searching CheckBox("chkDel") in an individual row of Grid  
            //    CheckBox chkdel = (CheckBox)grow.FindControl("CheckBox1");
            //    //If CheckBox is checked than delete the record with particular empid  
            //    if (chkdel.Checked)
            //    {
            //        int emp_id = Convert.ToInt32(((Label)grow.FindControl("lblsrno") as Label).ToolTip.ToString());
            //        deleterecord(emp_id);
            //    }

            //}
            ////Displaying the Data in GridView  
            //showdata();
        }

        protected void showdata()
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();

            string q = "select * from depdb where IsDeleted=0 and college_id=" + Convert.ToInt32(Session["collegeid"]);
            com = new SqlCommand(q, connection);

            reader = com.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            reader.Close();


        }

        protected void deleterecord(int dep_id)
        {
            connection = new SqlConnection(connectionString);
            SqlCommand com = new SqlCommand("UPDATE depdb SET IsDeleted = 1 WHERE dep_id = @ID", connection);
            com.Parameters.AddWithValue("@ID", dep_id);
            connection.Open();
            com.ExecuteNonQuery();
            connection.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            insertquery();
            clear();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            showdata();
            btndelete.Visible = true;

        }

        public void clear()
        {
            txtdepname.Text = "";
        }


       



    }
}