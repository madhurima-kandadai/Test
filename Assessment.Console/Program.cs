using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assessment.Library;

namespace Assessment.Console
{
    class Program
    {
        public static List<Company> CompanyList { get; set; }

        public static List<Client> ClientList { get; set; }

        static void Main(string[] args)
        {
            AssessmentEntities entities = new AssessmentEntities();
            Class1 cls = new Class1();
            CompanyList = entities.Companies.AsQueryable().ToList();
            ClientList = entities.Clients.AsQueryable().ToList();
            var list = entities.CompanyDetails.AsQueryable().ToList();
            cls.GetCompanyName(list);
            cls.GetCompanyWithMoreEmployees(list);
            var companyDetailsList = new List<CompanyDetail>();
            Get2016Data(companyDetailsList);
            Get2017Data(companyDetailsList);
            entities.CompanyDetails.AddRange(companyDetailsList);
            //int result = entities.SaveChanges();
            //if (result > 0)
            //{
            //    System.Console.WriteLine("Success");
            //}
        }


        public static void Get2016Data(List<CompanyDetail> companyDetailsList)
        {
            Random random = new Random();
            foreach (var company in CompanyList)
            {
                foreach (var client in ClientList)
                {
                    companyDetailsList.Add(new CompanyDetail
                    {
                        ProjectName = "New Project - " + random.Next(1, 5001),
                        CompanyId = company.CompanyId,
                        Year = "2016",
                        ClientTypeId = client.ClientTypeId,
                        M_Employees = random.Next(100, 5000),
                        W_Employees = random.Next(100, 5000)
                    });
                }
            }
        }

        public static void Get2017Data(List<CompanyDetail> companyDetailsList)
        {
            Random random = new Random();
            foreach (var company in CompanyList)
            {
                foreach (var client in ClientList)
                {
                    companyDetailsList.Add(new CompanyDetail
                    {
                        ProjectName = "New Project - " + random.Next(1, 5001),
                        CompanyId = company.CompanyId,
                        Year = "2017",
                        ClientTypeId = client.ClientTypeId,
                        M_Employees = random.Next(100, 5000),
                        W_Employees = random.Next(100, 5000)
                    });
                }
            }
        }
    }
}
