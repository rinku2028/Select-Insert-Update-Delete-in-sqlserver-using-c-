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
            string dataconn = "Data Source=desktop-tb3r1mj;Initial Catalog=access;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(dataconn);
            try
            {
                sqlconn.Open();
                Response.Write("database connected");
                string sql = "select id,name from info";
                //SqlCommand sqlcommand = new SqlCommand(sql, sqlconn);
                SqlDataAdapter sqldata = new SqlDataAdapter(sql,sqlconn);
                DataSet data = new DataSet();
                sqldata.Fill(data, "info");
                gdview.DataSource = data.Tables["info"].DefaultView;
                gdview.DataBind();

               
            }
            catch
            {
                Response.Write("Database not connected");
            }

        }
    }
}