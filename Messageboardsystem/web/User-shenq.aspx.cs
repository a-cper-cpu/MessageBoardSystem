using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_User_shenq : System.Web.UI.Page
{
    public String id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id= id = Request.QueryString["UserName"];
        Panel2.Visible = false;

        SqlDataSource1.SelectCommand = "SELECT * FROM [User_Shenq] WHERE UserName='" + id + "'";
        SqlDataSource2.SelectCommand = "SELECT * FROM [User_Shenq] WHERE UserName='" + id+ "' and Huicontents !=''";
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;

        a = HuiTextBox.Text;
       
        string cmdText = "INSERT User_Shenq(UserName,contents,time) VALUES('" + id + "','" + a + "','"+DateTime.Now+"')";
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.Panel2.Visible = true;

        

            string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;

        a = HuiTextBox.Text;

        string cmdText = "SELECT * FROM LoginTable WHERE status='admin' AND UserName='" + id + "'";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();

         cmd.ExecuteReader();


            if (cmd.Equals(null))
            {
                Label1.Text = "很遗憾你并没有成为管理员";
            }
            else {
                Label1.Text = "很遗憾你并没有成为管理员";
            }


 
               

            




        }
        catch (Exception ex)
        {
            Label1.Text = "错误，数据库连接有问题";
        }
        finally
        {
            con.Close();
        }


    }
}