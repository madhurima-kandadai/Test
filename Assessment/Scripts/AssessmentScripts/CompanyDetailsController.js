app.controller('CompanyDetailsController', function ($scope, $http) {

    $http.get("/home/GetCompanyDetailsWithLeastRatio/")
   .then(function (response) {
       $scope.companyName = response.data;
   });

    $http.get("/home/GetCompaniesWithMoreEmployees/")
    .then(function (response) {
        $scope.companyList = response.data;
    });

    $http.get("/home/GetProjectDetails/")
            .then(function (response) {
                $scope.projectList = response.data;
            });
});