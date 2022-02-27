using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_User_Fabiao : System.Web.UI.Page
{
    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["UserName"];

        SqlDataSource1.SelectCommand = "SELECT * FROM [UserPublicaTable] Where savecontents='false'";
    }



    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string contents;



        contents = HuiTextBox.Text;
  
        String Title = TitleTextBox.Text;

        string cmdText = "INSERT UserPublicaTable(UserName,Title,contents,Pbtime,ReplyNumber,status,savecontents) VALUES('" + id + "','" + Title + "','" + contents + "','" + DateTime.Now + "','0','User','false')";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();

            cmd.ExecuteReader();
            Response.Write("<script>alert('发布成功!')</script>");




        }
        catch (Exception ex)
        {



            Response.Write("<script>alert('发布失败!')</script>");
        }
        finally
        {
            con.Close();
        }
    }

  
}