using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string cmdText = "select * from UserPublicaTable Where status='lur'";
        SqlDataAdapter cmd = new SqlDataAdapter(cmdText, con);
        DataSet ds = new DataSet();
        try {
            con.Open();
            cmd.Fill(ds);
            
            }
        catch(Exception ex)
            {
            //  Label4.Text = ex.Message;
        }
            finally
        {
             con.Close();
        }
        //dr1.Close();
        //GridView1.DataSource=ds.Tables[0].DefaultView;
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }



    


    /*catch (Exception ex)
    {
       // Label4.Text = ex.Message;
    }
    finally
    {
        con.Close();
    }
    }
    */


    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("lur-yijian.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string cmdText = "select * from PublicatTable";
        SqlDataAdapter cmd = new SqlDataAdapter(cmdText, con);
        DataSet ds = new DataSet();
        try
        {
            con.Open();
            cmd.Fill(ds);

        }
        catch (Exception ex)
        {
            //Label6.Text = ex.Message;
            //  Label4.Text = ex.Message;
        }
        finally
        {
            
            con.Close();
        }
        //dr1.Close();
        GridView1.DataSource = ds.Tables[0].DefaultView;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;

        string cmdText = "SELECT * FROM UserPublicaTable WHERE UserName='" + TextBox4.Text + "' and status='lur' and savecontents='false'";
        SqlCommand cmd = new SqlCommand(cmdText, con);

        try
        {

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            Label6.Text = "标题为：" + dr["Title"].ToString() + "\r\n" +
                "内容为：" + dr["contents"].ToString() + "\r\n" +
                "发表时间为：" + dr["Pbtime"].ToString() + "\r\n" +
                "回复数为：" + dr["ReplyNumber"].ToString();
            dr.Close();
        }

        catch (Exception ex)
        {

            Label6.Text = "没有搜索到相关信息！";
            //  Label4.Text = ex.Message;
        }
        finally
        {
            
            con.Close();
        }
        
       

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;

        string cmdText2 = "INSERT UserPublicaTable(UserName,Title,contents,Pbtime,ReplyNumber,status,savecontents) VALUES('" + TextBox3.Text + "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + DateTime.Now + "','" + 0 + "','lur','false')";

        SqlCommand cmd2 = new SqlCommand(cmdText2, con);

        try
        {
            con.Open();
            cmd2.ExecuteReader();
            Response.Write("<script>alert('提交成功!')</script>");
        }

        catch (Exception ex)
        {
            // Label4.Text = ex.Message;
        }
        finally
        {
            // con.Close();
        }
        //dr1.Close();
    }
}