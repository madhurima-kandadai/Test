﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Assessment.Library;

namespace Assessment.ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            CompanyService service = new CompanyService();
            var list = service.GetProjectsBasedOnSearch("a");
        }
    }
}
