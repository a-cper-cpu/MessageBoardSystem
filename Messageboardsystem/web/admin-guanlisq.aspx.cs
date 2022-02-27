using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class web_admin_guanlisq : System.Web.UI.Page
{

    public String id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["UserName"];



        Panel1.Visible = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;
        string a, b,c;

        a = FaIDTextBox.Text;
     
        c = HuiTextBox.Text;

        string d = TimeTextBox.Text;

        string cmdText = "Update User_Shenq set AdminName='" + id+ "', Huicontents='"+c+"', Huitime='"+ DateTime.Now+"' where UserName='"+a+"' and time='"+d+"'";
        SqlCommand cmd = new SqlCommand(cmdText, con);
        try
        {
            con.Open();

            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
              // Console.WriteLine("添加成功");
                Response.Write("<script>alert('发送成功')</script>");
            }

           //cmd.ExecuteReader();
            




        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('发送失败')</script>");
        }
        finally
        {
            con.Close();
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //置Panel1为可见
        this.Panel1.Visible = true;
        //置“删除”按钮可见。因为也许在“新增”时已经将其置为不可见。



        GridViewRow row = GridView1.SelectedRow;
        String UserName = row.Cells[0].Text;


        String contents = row.Cells[1].Text;



       String time= row.Cells[2].Text;



        this.FaIDTextBox.ReadOnly = true;

        this.FaIDTextBox.Text = UserName;

        this.FaTextBox.ReadOnly = true;

        this.FaTextBox.Text = contents;

        this.TimeTextBox.ReadOnly = true;

        this.TimeTextBox.Text = time;




    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}