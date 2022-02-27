using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_lur_yijian : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;
        string id = FaIDTextBox.Text;
        a = HuiTextBox.Text;

        string cmdText = "INSERT admin_jianyi(UserName,contents,time,status) VALUES('" + id + "','" + a + "','" + DateTime.Now + "','yonghu')";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();

            cmd.ExecuteReader();
            Response.Write("<script>alert('发送成功')</script>");




        }
        catch (Exception ex)
        {

        }
        finally
        {
            con.Close();
        }
    }
}