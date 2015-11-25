using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学籍管理系统_02
{
    public partial class ScholarshipTj : System.Web.UI.Page
    {
        ScholarshipTjDataContext data2 = new ScholarshipTjDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = from s in data2.Scholarship orderby s.student_class select s;
            GridView1.DataBind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //GridView1.DataSource = from s in data2.Scholarship where s.student_class==DropDownList1.Text+DropDownList2.Text select s;
           // GridView1.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (DropDownList1.Text != "" && DropDownList2.Text != "")
            {
                GridView1.DataSource = from s in data2.Scholarship orderby s.student_class where s.student_class==DropDownList1.Text+DropDownList2.Text select s;
            }
            GridView1.DataBind();
        }

       
    }
}