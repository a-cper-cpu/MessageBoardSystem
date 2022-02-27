using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class web_user_publish : System.Web.UI.Page
{


    

    public string id;
    protected void Page_Load(object sender, EventArgs e)


    {   
       id = Request.QueryString["UserName"];

        SqlDataSource1.SelectCommand = "SELECT [UserName], [Title], [contents], [Pbtime], [ReplyNumber] FROM [UserPublicaTable]  where savecontents='false'";



    Panel1.Visible = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a;

       

        a = HuiTextBox.Text;
        String faid = FaIDTextBox.Text;
        String facontents=FaTextBox.Text;
        String Title = TitleTextBox.Text;

        

        string cmdText = "INSERT UserReplyTable(FaName,HuiName,Title,FaContents,HuiContents,ReplyTime,status) VALUES('" + faid + "','" + id + "','"+Title+"','"+facontents+"','"+ a + "','"+ DateTime.Now + "','User')";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();

            cmd.ExecuteReader();
            Response.Write("<script>alert('回复成功!')</script>");


           

        }
        catch (Exception ex)
        {
           
            

            Response.Write("<script>alert('回复失败!')</script>");
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
        String FaID = row.Cells[0].Text;


        String Title = row.Cells[1].Text;

 

       String contents= row.Cells[2].Text;



        this.FaIDTextBox.ReadOnly = true;

        this.FaIDTextBox.Text = FaID;

        this.TitleTextBox.Text = Title;

        this.FaTextBox.ReadOnly = true;

        this.FaTextBox.Text = contents;

        this.HuiTextBox.Text = "";

       

       


        
    }

}