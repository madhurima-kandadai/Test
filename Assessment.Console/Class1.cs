using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assessment.Library;

namespace Assessment.Console
{
    public class Class1
    {
        public string GetCompanyName(List<CompanyDetail> companyDetailsList)
        {
            var list = companyDetailsList.Where(x => x.Year == "2017").ToList();
            list.ForEach(x => x.Ratio = (decimal)x.W_Employees / (decimal)x.M_Employees);
            return list.OrderBy(x => x.Ratio).FirstOrDefault().Company.CompanyName;
        }

        public void GetCompanyWithMoreEmployees(List<CompanyDetail> companyDetailsList)
        {
            var list17 = companyDetailsList.Where(x => x.Year == "2017").OrderByDescending(x => x.Total_Employees).ToList().Take(10);
        }
    }
}
