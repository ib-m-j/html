using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
	protected void Page_Load(object sender, EventArgs e)
	{	
  	  if (!this.IsPostBack)
    	{
				  this.BindRepeater();
			}			
}					
 		
private void BindRepeater()
{
string constr = ConfigurationManager.ConnectionStrings["ib"].ConnectionString;
    using (SqlConnection con = new SqlConnection(constr))
    {
        using (SqlCommand cmd = new SqlCommand(
				"SELECT TOP 10 Id, tNavn FROM dbo.T_type", con))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rptCustomers.DataSource = dt;
                rptCustomers.DataBind();
            }
        }
    }
}
}