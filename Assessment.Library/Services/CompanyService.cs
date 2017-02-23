using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assessment.Library.Models;
using Assessment.Library;
using System.Configuration;

namespace Assessment.Library
{
    public class CompanyService
    {
        AssessmentEntities entities;
        public CompanyService()
        {
            entities = new AssessmentEntities();
        }
        public string GetCompanyNameWithLeastWomenMenRatio()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            SqlCommand cmd = new SqlCommand("GetCompanyNameWithLEastWomenMenRatio", con);
            string companyName = "";
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    companyName = rdr["CompanyName"].ToString();
                }
            }
            con.Close();
            return companyName;
        }

        public List<CompanyModel> GetCompanyWithMoreEmployees()
        {            
            var companyModelList = new List<CompanyModel>();
            var companyDetailsList = entities.CompanyDetails.AsQueryable().ToList();
            var list = entities.Companies.AsQueryable().ToList();
            foreach (var item in list)
            {
                var emp2016 =
                    companyDetailsList.Where(x => x.CompanyId == item.CompanyId && x.Year == "2016")
                        .Sum(x => x.Total_Employees);

                var emp2017 =
    companyDetailsList.Where(x => x.CompanyId == item.CompanyId && x.Year == "2017")
        .Sum(x => x.Total_Employees);

                if ((emp2017 - emp2016) > 0)
                {
                    companyModelList.Add(new CompanyModel()
                    {
                        CompanyName = item.CompanyName,
                        DifferenceInEmployees = emp2017.Value - emp2016.Value
                    });
                }
            }
            return companyModelList;
        }

        public List<CompanyModel> GetProjectsList()
        {
            var companyDetailslist = entities.CompanyDetails.ToList();
            var companies = entities.Companies.ToList();
            var list = (from detail in companyDetailslist
                         join company in companies on detail.CompanyId equals company.CompanyId
                         select new CompanyModel {
                             CompanyName = company.CompanyName,
                             M_Employees = detail.M_Employees,
                             W_Employees = detail.W_Employees,
                             ProjectName = detail.ProjectName

                         }).ToList();
            return list;
        }
    }
}
