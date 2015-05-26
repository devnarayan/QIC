var myApp = angular.module('ContentApp', []);
myApp.controller('ContentController', function ($http, $scope) {

    var basePath = localStorage.getItem("basePath");
    $scope.Getlanguage = function () {
        $("#txtContent1").hide();

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
        var LanguageID = $('#DDlLanguage').val()
        var ContentID = $('#DDlContent').val();
        var LangContent = "";
        if ($("#textarea").val() == "") {
            LangContent = $("#txtContent1").val();
        }
        else if ($("#txtContent1").val() == "") {
            LangContent = $("#textarea").val();
        }
       
        $http({
            method: 'post',
            url: basePath + '/Admin/AdminWebPages/UpdateContent',
            data: { ContentID: ContentID,LanguageID:LanguageID, LangContent: LangContent }
        })
        .success(function (result) {
            alert("Record Update Success");
            editor.setValue("");
            $("#txtContent1").val("");
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
        editor.setValue("");
        $("#txtContent1").val("");
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/GetLangContentList',
            params: { ContentID: ContentID }
        }).success(function (result) {
            var t = result.LangContent
            if (result.IsReachText == true) {
                $("#txtContent1").hide();
                editor.setValue(result.LangContent)
            }
            else {
                $("#txtContent1").show();
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

    $scope.GetContentListByID = function () {
        var WebPageID = $('#hdnfld').val();
        editor.setValue("");
        $("#txtContent1").val("");
        var LanguageID = localStorage.getItem("Lang");
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
});