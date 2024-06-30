using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLEmployee;
using BEEmployee;

namespace ThreeTierCrudOperation
{
    public partial class EmployeePL : System.Web.UI.Page
    {
        EmployeeBL ebl = new EmployeeBL();
        EmployeeBE beObj = new EmployeeBE();
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.Now);
            Response.Cache.VaryByParams["None"] = true;
            Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);
            if (!IsPostBack)
            {
                GridView1.DataSource = ebl.getemp();
                GridView1.DataBind();
                clearcon();
            }
        }
                
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            beObj.Name = txtSearch.Text;
            GridView1.DataSource = ebl.getEmpById(beObj);
            GridView1.DataBind();
            clearcon();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            beObj.Name = txtName.Text;
            beObj.Phone = txtPhone.Text;
            beObj.Salary = txtSalary.Text;
            beObj.Gender = ddlGender.SelectedItem.Text;
            ebl.InsertEmp(beObj);
            GridView1.DataSource = ebl.getemp();
            GridView1.DataBind();
            clearcon();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateEmployee.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/DeleteEmployee.aspx");
        }
        protected void clearcon()
        {
            txtName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtSalary.Text = string.Empty;
            txtSearch.Text = string.Empty;
            ddlGender.SelectedIndex = 0;
        }
    }
}