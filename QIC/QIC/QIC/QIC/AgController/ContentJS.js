var myApp = angular.module('ContentApp', []);
myApp.controller('ContentController', function ($http, $scope) {

    $scope.Getlanguage = function () {
        $("#txtContent1").hide();
        $("#txtContent2").hide();
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


    $scope.UpdateContent = function () {
        var ContentID = $('#DDlContent').val();
        var LangContent = "";
        if ($("#txtContent2").val() == "") {
            LangContent = $("#txtContent1").val();
        }
        else if ($("#txtContent1").val() == "") {
            LangContent = $("#txtContent2").val();
        }
        $http({
            method: 'post',
            url: basePath + '/Admin/AdminWebPages/UpdateContent',
            params: { ContentID: ContentID, LangContent: LangContent }
        })
        .success(function (result) {
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
            var t = result.LangContent
            if (result.IsReachText == true) {
                $("#txtContent1").hide();
                $("#txtContent2").show();
                $("#txtContent2").val(result.LangContent);
            }
            else {
                $("#txtContent1").show();
                $("#txtContent2").hide();
                $("#txtContent1").val(result.LangContent);
            }
            console.log(result);
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }
});