using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_Login_User : System.Web.UI.Page
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
        string cmdText = "SELECT * FROM LoginTable WHERE UserName='" + a + "' AND Password ='" + b + "'and status='user'";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            // Label4.Text = "读取的数据如下：\n";

            //Label4.Text = dr.Read().ToString();
            if (dr.Read().ToString() == "True")
            {
                Response.Redirect("HomePage.aspx?UserName="+a);
                /*for (int i = 0; i < dr.FieldCount; i++)
                {
                    if (TextBox1.Text == dr[i].ToString(). &&TextBox2.Text == dr[i].ToString().IndexOf(1)) {
                        Response.Redirect("qianduan.aspx");
                    }
                    //读取每一列数据
                    Label4.Text += dr[i].ToString() + "\t";
                }
                Label4.Text += "\n";*/

            }
            else
            {
 
                Response.Write("<script>alert('比对错误，请输入正确的账号密码！')</script>");
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
}