using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学籍管理系统_02
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        StudentClassDataContext data3 = new StudentClassDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = from s in data3.Student select s;
            GridView1.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // e.Row.Attributes.Add("onmouseover", "if(this!=prevselitem){this.style.backgroundColor='#Efefef'}");//当鼠标停留时更改背景色
                // e.Row.Attributes.Add("onmouseout", "if(this!=prevselitem){this.style.backgroundColor='#ffffff'}");//当鼠标移开时还原背景色
                e.Row.Attributes.Add("onclick", e.Row.ClientID.ToString() + ".checked=true;selectx(this)");//点击行变色

                //e.Row.Attributes["style"] = "Cursor:hand"; //设置悬浮鼠标指针形状为"小手"
                //  GridView1.HeaderRow.Cells[10].Visible = false;
                // e.Row.Cells[10].Visible = false;//隐藏选择按钮
                //String evt = Page.ClientScript.GetPostBackClientHyperlink(sender as System.Web.UI.WebControls.GridView, "Select$" + e.Row.RowIndex.ToString());
                // e.Row.Attributes.Add("onclick", evt);//执行选择行GridView1_SelectedIndexChanged事件
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                GridView1.DataSource = from s in data3.Student where s.Number==TextBox2.Text select s;
            }
            else if (TextBox1.Text != "")
            {
                GridView1.DataSource = from s in data3.Student where s.Name == TextBox1.Text select s;
            }
            else if (DropDownList1.Text != "" && DropDownList2.Text != "")
            {
                GridView1.DataSource = from s in data3.Student where s.Class == DropDownList1.Text + DropDownList2.Text select s;
            }
            else
            {
                GridView1.DataSource = from s in data3.Student select s;
            }
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}