var myApp = angular.module('ContentApp', []);
myApp.controller('ContentController', function ($http, $scope) {

    $scope.Getlanguage = function () {
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/GetLanguage'
        }).success(function (result) {
            $scope.LanguageList = result;
            console.log(result);
            $http({
                method: 'Get',
                url: basePath + '/Admin/AdminWebPages/GetWebPage'
            }).success(function (result) {
                $scope.WebPAgeList = result;

            })
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }

    $scope.GetContentList = function () {
        var LanguageID = $('#DDlLanguage').val();
        var WebPageID = $('#DDlWebPage').val();
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/GetContentList',
            params: { LanguageID: LanguageID, WebPageID: WebPageID }
        })
        .success(function (result) {
            $scope.ContentList = result;
            console.log(result);
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }


    $scope.GetLangContent = function () {
        var ContentID = $('#DDlContent').val();
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/GetLangContentList',
            params: { ContentID: ContentID }
        }).success(function (result) {
            alert(result.IsReachText)
            if (result.IsReachText == "1") {

            }
            else {

            }
            $scope.ContentList = result;
            console.log(result);
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }
});