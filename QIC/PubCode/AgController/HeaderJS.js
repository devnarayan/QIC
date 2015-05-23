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
            $scope.HeaderList = result;           
            for (var i = 0; i < $scope.HeaderList.length; i++) {
                var item = $scope.HeaderList[i].HeaderName;
                switch(item)
                {
                    case "Home":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtHome').val(hd);
                        break;
                    case "QIC":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        
                        $('#txtQIC').val(hd);
                        break;
                    case "Mission & Vision":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtMission').val(hd);
                        break;
                    case "GM Message":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtGMMessage').val(hd);
                        break;
                    case "Introduction":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtIntroduction').val(hd);
                        break;
                    case "Scope of work":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtScope').val(hd);
                        break;
                    case "Certification & Registration":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtCertification').val(hd);
                        break;
                    case "Organization":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtOrganization').val(hd);
                        break;
                    case "Projects":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtProjects').val(hd);
                        break;
                    case "Accomplished with":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtAccomplish').val(hd);
                        break;
                    case "Ongoing":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtOngoings').val(hd);
                        break;
                    case "Career":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtCareer').val(hd);
                        break;
                    case "Contact Us":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtContactUs').val(hd);
                        break;
                    case "About Company":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtAboutCompany').val(hd);
                        break;
                    case "About Company Content":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtAboutCompanyContent').val(hd);
                        break;
                    case "Company":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtCompany').val(hd);
                        break;
                    case "CONTACT INFORMATION":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtCONTACTINFO').val(hd);
                        break;
                    case "Phone":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtPhone').val(hd);
                        break;
                    case "Fax":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtFax').val(hd);
                        break;
                    case "Email":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtEmail').val(hd);
                        break;
                    case "Address1":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtAddress1').val(hd);
                        break;
                    case "Address2":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtAddress2').val(hd);
                        break;
                    case "Address3":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtAddress3').val(hd);
                        break;
                    case "Copyright":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtCopyright').val(hd);
                        break;
                    case "All Rights":
                        var hd = $scope.HeaderList[i].HeaderContent1;
                        $('#txtRights').val(hd);
                        break;
                }
                
            }
            //console.log(result);
            $("#loading").hide();
        })
        .error(function (err) {
            $("#loading").hide();
            console.log(err);
        })
    }

    $scope.UpdateHeaderContent = function () {
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

