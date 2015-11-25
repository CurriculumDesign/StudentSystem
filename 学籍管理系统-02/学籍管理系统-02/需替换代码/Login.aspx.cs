using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学籍管理系统_02
{
    public partial class Login : System.Web.UI.Page
    {
        UserClassDataContext data=new UserClassDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //用户输入
            TextBox1.Attributes.Add("Value", "请使用学号或工号登录");
            TextBox1.Attributes.Add("OnFocus", "if(this.value=='请使用学号或工号登录') {this.value=''}");
            TextBox1.Attributes.Add("OnBlur", "if(this.value==''){this.value='请使用学号或工号登录'}");


        }
        //点击登录按钮后，进入系统主页，并记住登录信息
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //连接数据库并验证密码
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script>alert('用户名或密码不能为空!')</script>");
            }

            else
            {

                string us = null;
                us=(from u in data.User where u.username == TextBox1.Text select u.username).ToString();
                if (us ==null)
                {
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "提示", "alert('用户名不存在')", true);
                }
                else
                {
                    var quary = data.User.Where(c => c.username == TextBox1.Text.ToString()).First();
                    //判断密码是否正确
                    if (quary.password == TextBox2.Text.ToString())
                    {
                        var response = base.Response;
                        this.Session["username"] = TextBox1.Text;
                        if (quary.type == "student")
                        {
                            response.Redirect("MainFrame1.aspx", false);
                        }
                        else
                        {
                            response.Redirect("MainFrame.aspx", false);
                        }
                        
                    }
                    else
                    {
                        Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "提示", "alert('用户名或密码错误')", true);
                    }
                }
                
            }
        }
        //点击重置按钮后，用户名和密码清空
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}