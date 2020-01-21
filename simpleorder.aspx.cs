using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace gridview
{
    public partial class simpleorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnview_Click(object sender, EventArgs e)
        {
        
            //select from database and view in gridview
            string dataconn = "Data Source=desktop-tb3r1mj;Initial Catalog=access;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(dataconn);
            try
            {
                sqlconn.Open();
                Response.Write("database connected");
                string sql = "select id,name from info";
                SqlDataAdapter sqldata = new SqlDataAdapter(sql,sqlconn);
                DataSet data = new DataSet();
                sqldata.Fill(data, "info");
                gdview.DataSource = data.Tables["info"].DefaultView;
                gdview.DataBind();
               
            }
            catch(Exception ex)
            {
                Response.Write("Database not connected");
            }

        }
    }
}
