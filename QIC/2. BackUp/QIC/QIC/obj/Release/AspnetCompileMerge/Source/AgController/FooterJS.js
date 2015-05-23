myApp.controller('Header_FooterController', function ($http, $scope) {

    $scope.GetHeaderContent3 = function () {

        var LanguageID = localStorage.getItem("Lang");
        if (LanguageID == null) {
            LanguageID = $('#DDlLanguage').val();
        }
        $("#DDLanguage").find(":selected").val(LanguageID);
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