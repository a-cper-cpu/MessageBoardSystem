using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_login_yijian : System.Web.UI.Page
{

    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = id = Request.QueryString["UserName"];

        SqlDataSource1.SelectCommand = "SELECT * FROM [admin_jianyi] WHERE UserName='"+id+"'";
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;

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