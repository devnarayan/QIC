var myApp = angular.module('Upload', []);
myApp.controller('UploadPicController', function ($scope, $http, $filter) {
    var orderBy = $filter('orderBy');
    $scope.Save = function () {
        var Vli = validate();
        if (Vli == false) {
            $('#ValidateModel').modal('show');

        }
        else {
            $http({
                method: 'POST',
                url: basePath + '/AdminWebPages/Save',
                //  data :{sg:Lang ,sg:PageName,sg:LangContent,sg:FeaturesImage},
                data: JSON.stringify($scope.sg),
                headers: { 'Content-Type': 'application/JSON' }
            }).success(function (data) {
                if (data == "Yes") {
                    $('#loading').hide();
                    $("#MessageArea").show();
                    $scope.MessageTitle = "Success";
                    $scope.MessageClass = "success";
                    $scope.Message = "Record inserted successfully.";
                }
            })
        }
    }
    $scope.UplaodPicInit = function () {
        $('#imgFSrc').hide();
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetLanguage1',
        }).success(function (data) {
            $scope.SelectLanguage = data;
        })
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetSelectPage',
        }).success(function (data) {
            $scope.SelectPage = data;
        })
       
    }
  
    $scope.GetPicsInfo = function () {
        //alert( $("#SelectPicName").find(":selected").val())
        $http({
            method: 'Post',
            url: basePath + '/AdminWebPages/GetPicName',
            data: { ContentImageID: $("#SelectPicName").find(":selected").val() }
        }).success(function (data) {
            $('#imgFSrc').show();
            $scope.SelectPicName = data;
        })
    }

    $scope.ChangeSelectPic = function () {
        //alert($("#SelectPage").find(":selected").val())
            $http({
                method: 'Post',
                url: basePath + '/AdminWebPages/GetPicList',
                data: { PageNo: $("#SelectPage").find(":selected").val(),lid: $("#SelectLanguage").find(":selected").val() }
            }).success(function (data) {
                $scope.PicsList = data;
            })
    }
   
    $scope.UploadLandingImage = function () {
        var input = document.getElementById('fileTolandingUpload');
        file = input.files[0];
       // alert(file);
            var formData = new FormData();
            formData.append("file", file);
            $http({
                method: 'Post',
                url: basePath + '/AdminWebPages/UploadImage/',
                params: { lid: $("#SelectLanguage").find(":selected").val(),pageid:$("#SelectPage").find(":selected").val(),cid:$("#SelectPicName").find(":selected").val() },
                headers: { 'Content-Type': undefined },
                data: formData
            }).success(function (result) {
                $('#fileTolandingUpload').val('');
                console.log(result);
            }).error(function (err) {
                console.log(err);
                $('#loading').hide();
            })
     
    }
    function validate() {
        var vl = true;
        var message = "";
        if (($("#fileTolandingUpload").val() == "")){
            vl = false;
            var expr = "^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.jpg|.JPG|.gif|.GIF)$";
            message += "Please fill Insert field. <br/>";
        }
        
        $("#ErrorMessage").html(message);
        return vl;

    }
    

})