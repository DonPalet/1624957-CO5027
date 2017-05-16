using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OasisComp1
{
    public partial class Product : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source = SQL2016.FSE.Network; User ID = user_db_1624957_co5027_asg; Password=Co5027-asg");
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                connect.Open();
                SqlCommand comm = connect.CreateCommand();
                comm.CommandType = System.Data.CommandType.Text;
                comm.CommandText = "SELECT * FROM ProdTable INNER JOIN ImgTable1 ON ProdTable.ProdID = ImgTable1.ImgID";
                comm.ExecuteNonQuery();

                DataTable datatab = new DataTable();
                SqlDataAdapter dataAdapt = new SqlDataAdapter(comm);
                dataAdapt.Fill(datatab);
                ProdRep.DataSource = datatab;
                ProdRep.DataBind();
                connect.Close();
            }
            catch
            {
                
            }

           
        }
    }
}