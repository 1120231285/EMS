using EMS201724112116.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112116
{
    public partial class Default : System.Web.UI.Page
    {
        EMSdb1Entities db = new EMSdb1Entities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //返回session中的用户id对应的名字
            if(Session["CurrentId"]!=null) {
                string uid = Session["CurrentId"].ToString();
                var result = from m in db.Emp
                             where m.Emp_id == uid
                             select m;
                StringBuilder sb = new StringBuilder();
                foreach (var s in result)
                {
                   sb.Append(string.Format(s.Emp_name));
                }
                Label1.Text = sb.ToString();
            }

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        //首页
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        //部门管理页面
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            var result = from m in db.Emp
                         where m.Emp_name == Label1.Text
                         select m;
            StringBuilder sb = new StringBuilder();
            foreach (var s in result)
            {
                sb.Append(s.Emp_manager);
            }
            if (Session["CurrentId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (sb.ToString() == "True")
            {
                Response.Redirect("dept.aspx");
            }
            else
            {
                Response.Write("<script>alert('对不起，你没有权限查看')</script>");
            }
        }
        //设备管理页面
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            var result = from m in db.Emp
                         where m.Emp_name == Label1.Text
                         select m;
            StringBuilder sb = new StringBuilder();
            foreach (var s in result)
            {
                sb.Append(s.Emp_manager);
            }
            if (Session["CurrentId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (sb.ToString() == "True")
            {
                Response.Redirect("Equ.aspx");
            }
            else
            {
                Response.Redirect("Ord.aspx");
            }
        }
        //员工管理页面
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            var result = from m in db.Emp
                         where m.Emp_name == Label1.Text
                         select m;
            StringBuilder sb = new StringBuilder();
            foreach (var s in result)
            {
                sb.Append(s.Emp_manager);
            }
            if (Session["CurrentId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else if (sb.ToString() == "True")
            {
                Response.Redirect("Emp.aspx");
            }
            else
            {
                Response.Write("<script>alert('对不起，你没有权限查看')</script>");
            }
        }
    }
}