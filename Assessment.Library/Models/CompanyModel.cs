using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assessment.Library.Models
{
    public class CompanyModel
    {
        public string CompanyName { get; set; }

        public int DifferenceInEmployees { get; set; }

        public string ProjectName { get; set; }

        public int? W_Employees { get; set; }

        public int? M_Employees { get; set; }

        public string Year { get; set; }
    }
}
