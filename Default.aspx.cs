using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Webform_With_StoreProcedure
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetList();
            }


        }
        SqlConnection conn = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=webform_with_StoreProcedure;Integrated Security=True;TrustServerCertificate=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            int productId=int.Parse(TextBox2.Text);
            string itemName = TextBox3.Text;
            string Specification= TextBox4.Text;
            string unit=DropDownList1.SelectedValue;
            string Status=RadioButtonList1.SelectedValue;
           DateTime date = DateTime.Parse(TextBox7.Text);
            
           SqlCommand cmd = new SqlCommand("exec product_SP '"+productId+"','"+itemName + "','"+Specification+"', '"+unit + "','"+Status + "','"+date+"'",conn);
           cmd.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"Script","Alert('Succesfully Saved');",true);
            GetList();
        }
        void GetList()
        {
            SqlCommand cmd = new SqlCommand("exec List_SP", conn);
            SqlDataAdapter sd= new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}