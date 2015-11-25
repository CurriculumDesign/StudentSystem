using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学籍管理系统_02
{
    public partial class InsertScore : System.Web.UI.Page
    {
        ScoreClassDataContext data1 = new ScoreClassDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                var s = new Score
                {
                    Student_Number = TextBox1.Text,
                    Student_Name = TextBox2.Text,
                    Student_Class = DropDownList1.Text + DropDownList2.Text,
                    Chinese = Convert.ToInt32(TextBox3.Text.ToString()),
                    Math = Convert.ToInt32(TextBox4.Text.ToString()),
                    English = Convert.ToInt32(TextBox5.Text.ToString()),
                    Physical = Convert.ToInt32(TextBox6.Text.ToString()),
                    chemistry = Convert.ToInt32(TextBox7.Text.ToString()),
                    organisms = Convert.ToInt32(TextBox8.Text.ToString())

                };
                data1.Score.InsertOnSubmit(s);
                data1.SubmitChanges();
                Response.Write("<script language='javascript'>alert('录入成功!')</script>");

            }
            else
            {
                Response.Write("<script language='javascript'>alert('数据不合法，请重新输入!');history.back();</script>");
            }

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }

      
    }
}