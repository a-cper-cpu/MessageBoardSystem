using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_User_jiaoliu : System.Web.UI.Page
{
    public string FriID;
    public string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = true;

        id = Request.QueryString["UserName"];

        SqlDataSource1.SelectCommand = "SELECT * FROM [jiaoliuTable] WHERE UserName='" + id + "' OR FriendName='"+id+"'";
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string contents;
        string friname;
        friname = UseridTextBox.Text;
       contents = contentsTextBox.Text;
       
        string cmdText = "INSERT jiaoliuTable(UserName,FriendName,contents,time) VALUES('" + id + "','" + friname + "','"+contents+"','"+DateTime.Now+"')";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();

            cmd.ExecuteReader();
            Response.Write("<script>alert('发送成功!')</script>");




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
        this.Panel1.Visible = false;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //置Panel1为可见
        this.Panel1.Visible = true;
        //置“删除”按钮可见。因为也许在“新增”时已经将其置为不可见。



        GridViewRow row = GridView1.SelectedRow;
        String Userid= row.Cells[0].Text;

        FriID= row.Cells[0].Text;


        this.UseridTextBox.Text = Userid;





      









    }
}