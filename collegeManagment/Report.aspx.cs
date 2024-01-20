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
    public partial class Report : System.Web.UI.Page
    {
        SqlConnection connection;
        SqlCommand com;
        SqlDataReader reader;

        string connectionString = ConfigurationManager.AppSettings["mydb"];

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showdata(0);
                binddropdown();
            }

        }

        protected void binddropdown()
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            DataSet dset = new DataSet();
            string query = @"select dep_id,deptname from depdb where IsDeleted=0 and college_id=" + Convert.ToInt32(Session["collegeid"]);
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

        protected void showdata(int dept)
        {
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();
            string q = "";
            if (dept == 0)
            {
                q = @"select collegecode,cd.* from complaintdb cd inner join collegereg cr on (cd.collegeid=cr.id)where cd.collegeid=" + Convert.ToInt32(Session["collegeid"]);
            }
            else
            {
                q = @"select collegecode,cd.* from complaintdb cd inner join collegereg cr on (cd.collegeid=cr.id) where cd.collegeid=" + Convert.ToInt32(Session["collegeid"]) + "and depid=" + dept;
            }
            com = new SqlCommand(q, connection);
            DataSet ds = new DataSet();
            SqlDataAdapter sd = new SqlDataAdapter(com);
            sd.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }
            foreach (GridViewRow item in GridView1.Rows)
            {
                DropDownList resolve = item.FindControl("ddlresolvby") as DropDownList;
                DataSet dset = new DataSet();
                string query = @"select user_id,username from depuser where college_id=" + Convert.ToInt32(Session["collegeid"]);
                com = new SqlCommand(query, connection);
                SqlDataAdapter sdk = new SqlDataAdapter(com);
                sdk.Fill(dset);
                if (dset.Tables[0].Rows.Count > 0)
                {
                    resolve.DataSource = dset;
                    resolve.DataTextField = dset.Tables[0].Columns["username"].ToString();
                    resolve.DataValueField = dset.Tables[0].Columns["user_id"].ToString();
                    resolve.DataBind();
                }
            }

        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Int32.Parse(btn.CommandArgument);
            connection = new SqlConnection(connectionString);
            // Open the connection
            string resolve = "";
            string status = "";
            string remark = "";
            // Open the connection
            connection.Open();
            foreach (GridViewRow item in GridView1.Rows)
            {
                Button it = item.FindControl("btnupdate") as Button;
                int gridid = Int32.Parse(it.CommandArgument);
                if (gridid == id)
                {
                    resolve = (((DropDownList)item.FindControl("ddlresolvby") as DropDownList).SelectedItem.Text).ToString();
                    status = ((DropDownList)item.FindControl("ddlstatus") as DropDownList).Text.ToString();
                    remark = status+" by " + resolve;
                    break;
                }
            }
            string q = @"update  complaintdb set resolveby=@resolveby,status=@status,remark=@remark where id=@id";
            com = new SqlCommand(q, connection);
            com.Parameters.AddWithValue("@resolveby", resolve);
            com.Parameters.AddWithValue("@status", status);
            com.Parameters.AddWithValue("@remark", remark);
            com.Parameters.AddWithValue("@id", Convert.ToInt32(id));

            com.ExecuteNonQuery();
            showdata(0);
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = Int32.Parse(btn.CommandArgument);
            connection = new SqlConnection(connectionString);
            // Open the connection
            connection.Open();

            string q = @"delete from complaintdb where id=" + id;
            com = new SqlCommand(q, connection);
            com.ExecuteNonQuery();
            showdata(0);
        }

        protected void btnfind_Click(object sender, EventArgs e)
        {
            showdata(Convert.ToInt32(ddlselectdep.SelectedValue));
        }

        protected void btnfinll_Click(object sender, EventArgs e)
        {
            showdata(0);
        }
    }
}