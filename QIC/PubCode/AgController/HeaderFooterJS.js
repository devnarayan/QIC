
var myApp = angular.module('HeaderFooterApp', []);
myApp.controller('HeaderFooterController', function ($http, $scope) {

    $scope.ChangeLanguage = function () {
        var LanguageID = $('#DDlLanguage').val();
        localStorage.setItem("Lang", LanguageID);
        $scope.LanguageID = LanguageID;
        var path = window.location.pathname;
        var lang = path.substr(0, 3);       
        if (lang.toLowerCase() == "/ar" && LanguageID==3) {
            path = path.replace("/Ar", "");
            path = "/En" + path;
            window.location = path;
        }
        else if (lang.toLowerCase() == "/en" && LanguageID == 4) {
            path = path.replace("/En", "");
            path = "/Ar" + path;
            window.location = path;
        }       
    }

    $scope.GetHeaderContent = function () {
        
        var LanguageID = localStorage.getItem("Lang");
        if (LanguageID == null) {
            LanguageID = $('#DDlLanguage').val();
        }
        $scope.LanguageID = LanguageID;
        if (LanguageID == 3) {
            $scope.LanguageShort = "En";
        }
        else {
            $scope.LanguageShort = "Ar";
        }
        $("#DDLanguage").val(LanguageID);
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


