using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BEEmployee
{
    public class EmployeeBE
    {
        private string _EmployeeId;
        private string _Name;
        private string _Phone;
        private string _Salary;
        private string _Gender;

        public string EmployeeId
        {
            get { return _EmployeeId; }
            set { _EmployeeId = value; }
        }
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }
        public string Phone
        {
            get { return _Phone; }
            set { _Phone = value; }
        }
        public string Salary
        {
            get { return _Salary; }
            set { _Salary = value; }
        }
        public string Gender
        {
            get { return _Gender; }
            set { _Gender = value; }
        }
    }
}
