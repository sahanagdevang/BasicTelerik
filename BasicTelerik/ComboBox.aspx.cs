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
    public partial class ComboBox : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RadComboBox1.DataSource = GetData("spGetRoles", null);
                RadComboBox1.DataBind();
                RLabel2.Visible = false;
                RadComboBox2.Visible = false;
            }
        }

        public DataSet GetData(string SPName, SqlParameter SPParameter)
        {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(SPName, con);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;
                if(SPParameter != null)
                {
                    da.SelectCommand.Parameters.Add(SPParameter);
                }
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
        }
        
        protected void RadComboBox1_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
        {
            RLabel2.Visible = true;
            RadComboBox2.Visible = true;
            RadComboBox2.DataSource = GetData("spGetPassword", null);   
            RadComboBox2.DataBind();           
        }
    }
}