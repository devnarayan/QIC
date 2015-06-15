//var myApp2 = angular.module('ContentApp', []);
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
            alert("Record Update Success");
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

    $scope.GetContentListByID = function () {
        var WebPageID = $('#hdnfld').val();
        var LanguageID = localStorage.getItem("Lang");
        if (LanguageID == null)
            LanguageID = 3;
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
   

    $scope.GetContentPicsatScopeInit = function () {
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPics',
            data: { ContentImageID: 1 , LanguageID:3,WebPageID:8}
        }).success(function (data) {
            $scope.SelectPicName = data;
        })
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPics1',
            data: { ContentImageID: 3, LanguageID: 3, WebPageID: 8 }
        }).success(function (data) {
            $scope.SelectPic = data;
        })
    }
    $scope.GetContentScopeInit = function () {
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPics2',
            data: { ContentImageID: 2, LanguageID: 4, WebPageID: 8 }
        }).success(function (data) {
            $scope.SelectPicName = data;
        })
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPics3',
            data: { ContentImageID: 4, LanguageID: 4, WebPageID: 8 }
        }).success(function (data) {
            $scope.PicName = data;
        })
    }

    $scope.GetContentPicsatProjectInit = function () {
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicsAcomplished',
            data: { ContentImageID: 13, LanguageID: 3, WebPageID: 3 }
        }).success(function (data) {
            $scope.SelectPicName = data;
        })
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicsAcomplished1',
            data: { ContentImageID: 15, LanguageID: 3, WebPageID: 3 }
        }).success(function (data) {
            $scope.SelectPic = data;
        })
    }
    $scope.GetContentProjectInit = function () {
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicsAcomplished2',
            data: { ContentImageID: 14, LanguageID: 4, WebPageID: 3 }
        }).success(function (data) {
            $scope.SelectPicName = data;
        })
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicsAcomplished3',
            data: { ContentImageID: 16, LanguageID: 4, WebPageID: 3 }
        }).success(function (data) {
            $scope.SelectPic = data;
        })
    }
    $scope.GetContentProjectOngoingInit = function () {
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicsAcomplished4',
            data: { ContentImageID: 14, LanguageID: 4, WebPageID: 3 }
        }).success(function (data) {
            $scope.SelectPicName = data;
        })
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicsAcomplished5',
            data: { ContentImageID: 16, LanguageID: 4, WebPageID: 3 }
        }).success(function (data) {
            $scope.SelectPic = data;
        })
    }
    $scope.GetContentPicsatProject1Init = function () {
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicsAcomplished6',
            data: { ContentImageID: 13, LanguageID: 3, WebPageID: 3 }
        }).success(function (data) {
            $scope.SelectPicName = data;
        })
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicsAcomplished7',
            data: { ContentImageID: 15, LanguageID: 3, WebPageID: 3 }
        }).success(function (data) {
            $scope.SelectPic = data;
        })
    }
});