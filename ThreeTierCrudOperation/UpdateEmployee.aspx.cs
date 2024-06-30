using BEEmployee;
using BLEmployee;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ThreeTierCrudOperation
{
    public partial class UpdateEmployee : System.Web.UI.Page
    {
        EmployeeBL ebl = new EmployeeBL();
        EmployeeBE beObj = new EmployeeBE();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UGridView1.DataSource = ebl.getemp();
                UGridView1.DataBind();
                clearcon();
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            beObj.Name = UtxtSearch.Text;
            UGridView1.DataSource = ebl.getEmpById(beObj);
            UGridView1.DataBind();
            clearcon();
        }

        protected void UbtnUpdate_Click(object sender, EventArgs e)
        {
            beObj.EmployeeId = UtxtEmpId.Text;
            beObj.Name = UtxtName.Text;
            beObj.Phone = UtxtPhone.Text;
            beObj.Salary = UtxtSalary.Text;
            beObj.Gender = UddlGender.SelectedItem.Text;
            ebl.UpdateEmp(beObj);
            UGridView1.DataSource = ebl.getemp();
            UGridView1.DataBind();
            clearcon();
        }

        protected void clearcon()
        {
            UbtnSearch.Text = string.Empty;
            UtxtEmpId.Text = string.Empty;
            UtxtName.Text = string.Empty;
            UtxtPhone.Text = string.Empty;
            UtxtSalary.Text = string.Empty; 
            UddlGender.SelectedIndex = 0;
        }

    }
}