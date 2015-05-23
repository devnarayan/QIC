var myApp = angular.module('HeaderApp', []);
myApp.controller('HeaderController', function ($http, $scope) {


    $scope.Getlanguage = function () {
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/GetLanguage'
        }).success(function (result) {
            $scope.LanguageList = result;
            console.log(result);
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }


    $scope.GetHeaderContent = function () {
        var LanguageID = $('#DDlLanguage').val();
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/GetHeaderContent',
            params: { LanguageID: LanguageID }
        }).success(function (result) {           
            $scope.Header_List = result;           
            console.log(result);
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }


    $scope.updaterecord = function () {
        alert('hi');
        var LanguageID = $('#DDlLanguage').val();

        var txtHome = $('#txtHome').val();
        var txtQIC = $('#txtQIC').val();
        var txtMission = $('#txtMission').val();
        var txtGMMessage = $('#txtGMMessage').val();
        var txtIntroduction = $('#txtIntroduction').val();

        var txtScope = $('#txtScope').val();
        var txtCertification = $('#txtCertification').val();
        var txtOrganization = $('#txtOrganization').val();
        var txtProjects = $('#txtProjects').val();
        var txtAccomplish = $('#txtAccomplish').val();


        var txtOngoings = $('#txtOngoings').val();
        var txtCareer = $('#txtCareer').val();
        var txtContactUs = $('#txtContactUs').val();
        var txtAboutCompany = $('#txtAboutCompany').val();
        var txtAboutCompanyContent = $('#txtAboutCompanyContent').val();

        var txtCompany = $('#txtCompany').val();
        var txtCONTACTINFO = $('#txtCONTACTINFO').val();
        var txtPhone = $('#txtPhone').val();
        var txtFax = $('#txtFax').val();
        var txtEmail = $('#txtEmail').val();


        var txtAddress1 = $('#txtAddress1').val();
        var txtAddress2 = $('#txtAddress2').val();
        var txtAddress3 = $('#txtAddress3').val();
        var txtCopyright = $('#txtCopyright').val();
        var txtRights = $('#txtRights').val();
        alert('out');
        $http({
            method: 'Get',
            url: basePath + '/Admin/AdminWebPages/UpdateHeaderContent',
            params: { LanguageID: LanguageID, txtHome: txtHome, txtQIC: txtQIC, txtMission: txtMission, txtGMMessage: txtGMMessage, txtIntroduction: txtIntroduction, txtScope: txtScope, txtCertification: txtCertification, txtOrganization: txtOrganization, txtProjects: txtProjects, txtAccomplish: txtAccomplish, txtOngoings: txtOngoings, txtCareer: txtCareer, txtContactUs: txtContactUs, txtAboutCompany: txtAboutCompany, txtAboutCompanyContent: txtAboutCompanyContent, txtCompany: txtCompany, txtCONTACTINFO: txtCONTACTINFO, txtPhone: txtPhone, txtFax: txtFax, txtEmail: txtEmail, txtAddress1: txtAddress1, txtAddress2: txtAddress2, txtAddress3: txtAddress3, txtCopyright: txtCopyright, txtRights: txtRights }
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



});