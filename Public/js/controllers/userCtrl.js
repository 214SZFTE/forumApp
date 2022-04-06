app.controller('userCtrl', function($scope, $rootScope, dbFactory, fileUpload) {
    $scope.user = {};

    $scope.modify = function() {
        var file = $scope.user.pic;
        var uploadUrl = "http://localhost:8080/upload";
        if (file != null) {
            fileUpload.uploadFileToUrl(file, uploadUrl).then(
                function(res) {

                    let data = {
                        avatar_path: res.data
                    }
                    dbFactory.update('user', $rootScope.loggedUserID, data);
                }
            );

        }
    };

});