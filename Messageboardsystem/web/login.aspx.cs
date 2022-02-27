using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



    public partial class web_index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;
        a = TextBox1.Text; ;
        b = TextBox2.Text;
        string cmdText = "SELECT * FROM LoginTable WHERE UserName='" + a + "' AND Password ='" + b + "'and status='admin'";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            // Label4.Text = "读取的数据如下：\n";

            //Label4.Text = dr.Read().ToString();
            if (dr.Read().ToString() == "True")
            {
                Response.Redirect("admin-HomePage.aspx?UserName=" + a);
            

            }
            else
            {

                Label4.Text = "比对错误，请输入正确的账号密码！";
            }
            dr.Close();
        }
        catch (Exception ex)
        {
            // Label4.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }


      
    }
        /* *************************************测试连接数据库**********************************
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = MySqlCon;
            try
            {
                con.Open();
                Label4.Text = "连接数据库" + con.Database + "成功。连接字符串如下：\n" + con.ConnectionString;
            }
            catch (Exception ex)
            {
                Label4.Text = ex.Message;
            }
            finally {
                con.Close();
            }
        */

        protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("qianduan.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("yanzhengadmin.aspx");
    }
}
