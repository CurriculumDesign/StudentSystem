using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 学籍管理系统_02
{
    public partial class ScoreTj : System.Web.UI.Page
    {
        ScoreClassDataContext data = new ScoreClassDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = from s in data.Score orderby s.Student_Class select s;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList3.Text != "")
            {
                GridView1.DataSource = from s in data.Score orderby s.Student_Class where s.Chinese<60||s.English<90 ||s.Math<90||s.organisms<60||s.Physical<60||s.chemistry<60 select s;
            }
            GridView1.DataBind();
        }
    }
}