using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_Reply : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["UserName"];

        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
       
        string cmdText = "SELECT * FROM UserPublicaTable WHERE UserName='" + id+"'";
        SqlCommand cmd = new SqlCommand(cmdText, con);

       
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();

            TextBox1.Text = dr["Title"].ToString();
            TextBox2.Text = id;
            TextBox7.Text= dr["Pbtime"].ToString();
            TextBox3.Text= dr["contents"].ToString();

            dr.Close();
            con.Close();


            string cmdText1 = "SELECT * FROM UserReplyTable WHERE FaName='" + id + "'";
            SqlCommand cmd1 = new SqlCommand(cmdText1, con);


        try
        {
            con.Open();


            SqlDataReader dr1 = cmd1.ExecuteReader();
            dr1.Read();
            TextBox4.Text = dr1["HuiContents"].ToString();
            Label7.Text= dr1["HuiName"].ToString();
            Label9.Text = dr1["ReplyTime"].ToString();

            /*string i = "";
            string b= dr1["ReplyTime"].ToString()+i;
            if (b== dr1["ReplyTime"].ToString())
            {   
                Response.AddHeader("Refresh", "0");
                b = null;
                i = "" + "abc";
            }*/
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cts;
        string id = Request.QueryString["UserName"];

        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;


        string cmdText1 = "SELECT * FROM UserPublicaTable WHERE UserName='" + id + "' and status='lur' and savecontents='false'";
        SqlCommand cmd1 = new SqlCommand(cmdText1, con);


        string title = TextBox1.Text;

        con.Open();
        SqlDataReader dr = cmd1.ExecuteReader();

        dr.Read();

         cts=dr["contents"].ToString();
        //Label12.Text = cts;
        dr.Close();
        con.Close();


        string cmdText = "INSERT UserReplyTable(FaName,HuiName,Title,FaContents,HuiContents,ReplyTime,status) VALUES('" + TextBox2.Text + "','" + TextBox6.Text + "','"+title+"','" + TextBox3.Text + "'"+",'"+TextBox5.Text + "','" + DateTime.Now + "','lur')";

        SqlCommand cmd = new SqlCommand(cmdText, con);

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('提交成功!')</script>");








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

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("qianduan.aspx");
    }
}