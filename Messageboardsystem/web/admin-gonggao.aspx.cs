using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_admin_gonggao : System.Web.UI.Page
{

    public String id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["UserName"];
        SqlDataSource1.SelectCommand = "SELECT [UserName], [contents], [time] FROM [admin_jianyi] Where status='login'";
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;

        a = contentsTextBox.Text;

        string cmdText = "INSERT admin_jianyi(UserName,contents,time,status) VALUES('" + id + "','" + a + "','" + DateTime.Now + "','login')";
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

    protected void btnCancel_Click(object sender, EventArgs e)
    {

    }
}