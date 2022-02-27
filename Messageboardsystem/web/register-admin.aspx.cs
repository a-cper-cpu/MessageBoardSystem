using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_register_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LOGINButton_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;
        a = USERNAMETextBox.Text;
        b = PASSWORDTextBox.Text;
        string cmdText = "INSERT LoginTable(UserName,Password,status) VALUES('" + a + "','" + b + "','admin' )";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();

            cmd.ExecuteReader();
            Response.Write("<script>alert('注册成功!请返回登录界面登录')</script>");




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