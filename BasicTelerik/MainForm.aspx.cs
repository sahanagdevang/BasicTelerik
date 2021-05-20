using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Telerik.Web.UI;

namespace BasicTelerik
{
    public partial class MainForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RadGrid1.DataSource = getEmptyTable();
                clearMsg.Visible = false;
            }

        }

        public void DataGridBind()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("spGetPerson", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            RadGrid1.DataSource = ds;
            RadGrid1.DataBind();

            con.Close();

        }
       

    protected void rdbtnSave_Click(object sender, EventArgs e)
        {
            if (rdtxtName.Text != null)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("spSetPerson", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", rdtxtName.Text);
                cmd.Parameters.AddWithValue("@address", rdtxtAddress.Text);
                cmd.Parameters.AddWithValue("@age", rdtxtAge.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                rdtxtName.Text = string.Empty;
                rdtxtAddress.Text = string.Empty;
                rdtxtAge.Text = string.Empty;

            }
            else { }
            
        }


        public DataTable getDataTable()
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                string query = "spGetPerson";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                //RadGrid1.DataSource = ds;
                //RadGrid1.DataBind();
            }
            finally
            {
                con.Close();
            }
            return dt;
        }

        public DataTable getEmptyTable()
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                string query = "emptyTable";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
            }
            finally
            {
                con.Close();
            }
            return dt;
        }

        public void RadGrid1_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {
            RadGrid1.DataSource = getDataTable();
            
        }
        protected void RadGrid1_PageIndexChanged(object sender, GridPageChangedEventArgs e)
        {
            RadGrid1.DataSource = getDataTable();
        }

        protected void generate_Click(object sender, EventArgs e)
        {
            RadGrid1.DataSource = getDataTable();
            RadGrid1.DataBind();
        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {
            //RadGrid1.DataSource = getEmptyTable();
            //clearMsg.Visible = true;
        }

        
    }
    public class eventCall
    {
        //    public void RadGrid1_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        //{
        //    //RadGrid1.DataSource = e.getDataTable();
        //    //RadGrid1.DataSource = getEmptyTable();
        //}
    }
}