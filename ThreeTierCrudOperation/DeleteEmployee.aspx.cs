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
    public partial class DeleteEmployee : System.Web.UI.Page
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
            beObj.Name = DtxtSearch.Text;
            UGridView1.DataSource = ebl.getEmpById(beObj);
            UGridView1.DataBind();
            clearcon();
        }

        protected void DbtnDelete_Click(object sender, EventArgs e)
        {
            beObj.EmployeeId = DtxtEmpId.Text;            
            ebl.DeleteEmp(beObj);
            UGridView1.DataSource = ebl.getemp();
            UGridView1.DataBind();
            clearcon();
        }
        protected void clearcon()
        {
            DtxtEmpId.Text = string.Empty;
            DtxtSearch.Text = string.Empty;
        }
    }
}