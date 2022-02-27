using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class web_Backstage : System.Web.UI.Page
{
    public String id1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["Publication"];

        id1= Request.QueryString["UserName"];

        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;

        string cmdText = "select UserName,Title,contents,Pbtime,ReplyNumber from UserPublicaTable Where status='lur' and savecontents='false' ";
        SqlDataAdapter cmd = new SqlDataAdapter(cmdText, con);
        DataSet ds = new DataSet();
        try
        {
            con.Open();
            cmd.Fill(ds);   

        }
        catch (Exception ex)
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

        string cmdText1 = "delete from UserPublicaTable where UserName='" + id1 + "' and status='lur' and savecontents='false'";
        SqlCommand cmd1 = new SqlCommand(cmdText1,con);

        con.Open();

        int b=cmd1.ExecuteNonQuery();
        if (b > 0) {
            Response.AddHeader("Refresh", "0");
            b = 0;
        }
        con.Close();
        
        //Response.Redirect(Request.Url.ToString());
        //Response.Redirect("Backstage.aspx");

        /*  GridView1.PagerSettings.Mode = PagerButtons.NextPreviousFirstLast;
          GridView1.PagerSettings.NextPageImageUrl = "../src/up.ico";
          GridView1.PagerSettings.PreviousPageImageUrl = "../src/left.ico";
          GridView1.PagerSettings.FirstPageImageUrl = "../src/right.ico";
          GridView1.PagerSettings.LastPageImageUrl = "../src/down.ico";
          GridView1.PageSize = 2; //每页最多显示10条记录； 


          BindData();*/
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string MySqlCon = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        SqlConnection con = new SqlConnection();
        con.ConnectionString = MySqlCon;

        string cmdText1 = "select COUNT(*)  from UserReplyTable where FaName ='" + TextBox2.Text + "'";
        SqlCommand cmd1 = new SqlCommand(cmdText1, con);

        con.Open();
        SqlDataReader dr1 = cmd1.ExecuteReader();
        //Label4.Text = "读取的数据如下：\n";

        //Label4.Text = dr.Read().ToString();
        // int num;
        int num = dr1.FieldCount - 1;
        // num = dr1.FieldCount;
        //  Label4.Text = dr1.FieldCount.ToString();
        dr1.Close();
        con.Close();
        string cmdText2 = "INSERT UserPublicaTable(UserName,Title,contents,Pbtime,ReplyNumber,status,savecontents) VALUES('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + DateTime.Now + "','" + num + "','admin','false')";

        SqlCommand cmd2 = new SqlCommand(cmdText2, con);

        try
        {
            con.Open();
            cmd2.ExecuteReader();
            Response.Write("<script>alert('发布成功!')</script>");
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
    }
    /*private void BindToDataGrid()
    {
        SqlConnection conn = DB.createCon();
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from [user]", conn);
        DataSet ds = new DataSet();
        sda.Fill(ds, "emp");
        GridView1.DataSource = ds.Tables["emp"];
        GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindToDataGrid();
    }*/


   /* private void BindData()
    {
        //将数据部署到GridView中 
        string Constr = "Data Source=DESKTOP-C6GJBUR;Initial Catalog=MessageBoard;Integrated Security=True";
        string sqlstr = "select * from PublicatTable";
        SqlConnection con = new SqlConnection(Constr);
        SqlDataAdapter ad = new SqlDataAdapter(sqlstr, con);
        DataSet ds = new DataSet();
        ad.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
        //进行分页之后，重新部署数据 
        BindData();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        //分页完成之前 
        GridView1.PageIndex = e.NewPageIndex;
    }
    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        //添加分页码显示 
        GridViewRow bottomPagerRow = GridView1.BottomPagerRow;
        //Label bottomLabel = new Label();
        Label6.Text = "目前所在分页：（" + (GridView1.PageIndex + 1) + "/" + GridView1.PageCount + "）";
        bottomPagerRow.Cells[0].Controls.Add(Label6);
    }*/

}