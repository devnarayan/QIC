
var myApp = angular.module('HeaderFooterApp', ['ngSanitize']);
myApp.controller('HeaderFooterController', function ($http, $scope) {

    $scope.ChangeLanguage = function () {
        var LanguageID = $('#DDlLanguage').val();
        localStorage.setItem("Lang", LanguageID);
        var basePath = localStorage.getItem("basePath");
        $scope.LanguageID = LanguageID;
        var path = window.location.pathname;
        path = path.replace("/QicWeb", "");
        var lang = path.substr(0, 3);       
        if (lang.toLowerCase() == "/ar" && LanguageID==3) {
            path = path.replace("/Ar", "");
            path = basePath + "/En" + path;
            window.location = path;
        }
        else if (lang.toLowerCase() == "/en" && LanguageID == 4) {
            path = path.replace("/En", "");
            path = basePath + "/Ar" + path;
            window.location = path;
        }       
    }

    $scope.GetHeaderContent = function () {
        
        var LanguageID = localStorage.getItem("Lang");
        if (LanguageID == null) {
            LanguageID = 3;// $('#DDlLanguage').checked;
           // localStorage.setItem("Lang", 3);
        }
        $scope.LanguageID = LanguageID;
        if (LanguageID == 3) {
            $scope.LanguageShort = "En";
            localStorage.setItem("Lang",3);
        }
        else {
            $scope.LanguageShort = "Ar";
            localStorage.setItem("Lang", 4);
        }
       // $("#DDLanguage").val(LanguageID);
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/GetHeaderContent',
            params: { LanguageID: LanguageID }
        }).success(function (result) {
            $scope.HeaderList = result;
            console.log(result);
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }

});

myApp.controller('Header_FooterController', function ($http, $scope) {

    $scope.GetHeaderContent3 = function () {
   
        var LanguageID = localStorage.getItem("Lang");
        if (LanguageID == null || LanguageID==undefined) {
            LanguageID = $('#DDlLanguage').val();
        }
        $("#DDLanguage").find(":selected").val(LanguageID);
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/GetHeaderContent',
            params: { LanguageID: LanguageID }
        }).success(function (result) {
            $scope.FooterList = result;
            console.log(result);
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }

});