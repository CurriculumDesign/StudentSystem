using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学籍管理系统_02
{
    public partial class InsertStudent : System.Web.UI.Page
    {
        StudentClassDataContext data = new StudentClassDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!=""&&TextBox2.Text!="")
            {
                 var student = new Student { 
                    Number=TextBox1.Text,
                    Name=TextBox2.Text,
                    Sex=DropDownList3.Text,
                    Age=TextBox3.Text,
                    Class=DropDownList1.Text+DropDownList2.Text,
                    Contact=TextBox4.Text,
                    Adress=TextBox5.Text
                };
                data.Student.InsertOnSubmit(student);
                data.SubmitChanges();
                Response.Write("<script language='javascript'>alert('录入成功!')</script>");
                
            }
            else
            {
                Response.Write("<script language='javascript'>alert('数据不合法，请重新输入!');history.back();</script>");
            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertStudent.aspx");

        }
    }
}