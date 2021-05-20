using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BasicTelerik
{
    public partial class Loginpage : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        int result = -1;
        protected void Page_Load(object sender, EventArgs e)
        {
            //loginlist.DataSourceID = "";
            //loginCombo.DataSource = getRoles();
            //loginCombo.DataBind();
            loginCombo.DataSource = getRoles();
            loginCombo.DataValueField = "Id";
            loginCombo.DataTextField = "Role";
            loginCombo.DataBind();
        }



        public DataTable getRoles()
        {
            DataTable dat = new DataTable();
            try
            {
                con.Open();
                string query = "spGetRoles";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.StoredProcedure;
                //SqlDataAdapter sda = new SqlDataAdapter(cmd);
                SqlDataReader dr = cmd.ExecuteReader();
                dat.Load(dr);

            }
            finally
            {
                con.Close();
            }
            return dat;
        }

        protected void loginCombo_DataBinding(object sender, EventArgs e)
        {



        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
          
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("spGetByRoleandPassword", con);

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Role", loginCombo.Text);
                cmd.Parameters.AddWithValue("@password", passwordtxt.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Response.Redirect("MainForm.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Password');</script>");
                   
                }
            }
            finally
            {
                con.Close();
            }

        }
        public void getByIdCount()
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(@"DECLARE @IdCount int 
                                                  EXECUTE spGetIdCount @IdCount = @IdCount Out, @Role = '" + loginCombo.Text + "', " +
                                                  "@password = '" + passwordtxt.Text + "' Print @IdCount", con);
                cmd.CommandType = CommandType.StoredProcedure;
                result = Convert.ToInt32(cmd.ExecuteScalar());

                if (result > 0)
                {
                    //success
                }
                else
                {
                    //Failed
                }
            }
            finally
            {
                con.Close();
            }
        }


    }
    
}