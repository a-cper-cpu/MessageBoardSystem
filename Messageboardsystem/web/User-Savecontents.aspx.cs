using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



public partial class web_User_Savecontents : System.Web.UI.Page
{

    public String id;

   
    protected void Page_Load(object sender, EventArgs e)
    {


       

    Panel1.Visible = true;
        id = Request.QueryString["UserName"];
        SqlDataSource1.SelectCommand = "SELECT * FROM [UserPublicaTable] WHERE UserName='" + id + "' and savecontents='true'";
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;
        a = TitleTextBox.Text;
        b = contentsTextBox.Text;
        string cmdText = "INSERT UserPublicaTable(UserName,Title,contents,Pbtime,ReplyNumber,status,savecontents) VALUES('" + id + "','" + a + "','"+b+"','"+DateTime.Now+"','0','User','true')";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();

            cmd.ExecuteReader();
            Response.Write("<script>alert('保存成功!')</script>");




        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('保存失败!')</script>");
        }
        finally
        {
            con.Close();
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = false;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //置Panel1为可见
        this.Panel1.Visible = true;
        //置“删除”按钮可见。因为也许在“新增”时已经将其置为不可见。

        

        GridViewRow row = GridView1.SelectedRow;
        String Title = row.Cells[0].Text;



       

       

        String contents = row.Cells[1].Text;


        String Time = row.Cells[2].Text;




        this.TitleTextBox.Text = Title;




        this.contentsTextBox.Text = contents;

        this.TimeTextBox.ReadOnly = true;

        this.TimeTextBox.Text = Time;







    }


    protected void btnPublish_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b;
        a = TitleTextBox.Text;
        b = contentsTextBox.Text;

        String time = TimeTextBox.Text;

        try
        {
            string cmdText = "UPDATE UserPublicaTable  set Pbtime='"+DateTime.Now+ "',savecontents='false' where UserName='"+id+ "' and Pbtime='"+time+"'";
         SqlCommand cmd = new SqlCommand(cmdText, con);
       
            con.Open();

            cmd.ExecuteReader();
            Response.Write("<script>alert('发布成功!')</script>");
            

           // con.Close();

          //  con.Open();

         //   string cmdText1 = "delete from UersSavecontents  where UserName  ='" + id + "' and SaveTime='" + time + "'";
          //  SqlCommand cmd1 = new SqlCommand(cmdText1, con);

            //   cmd1.ExecuteNonQuery();
         //   cmd1.ExecuteReader();



        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('保存内容删除失败!')</script>");
        }
        finally
        {
            con.Close();
        }
    }
}