using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DLEmployee;
using BEEmployee;

namespace BLEmployee
{
    public class EmployeeBL
    {
        EmployeeDL edl = new EmployeeDL();
        public DataTable getemp()
        {
            return edl.GetAllEmployee();
        }

        public DataTable getEmpById(EmployeeBE beObj)
        {
            return edl.GetEmployeeById(beObj);
        }

        public DataTable InsertEmp(EmployeeBE beObj)
        {
            return edl.InsertEmployee(beObj);
        }

        public DataTable UpdateEmp(EmployeeBE beObj)
        {
            return edl.UpdateEmployee(beObj);
        }

        public DataTable DeleteEmp(EmployeeBE beObj)
        {
            return edl.DeleteEmployee(beObj);
        }
    }
}
