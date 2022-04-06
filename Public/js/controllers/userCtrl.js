app.controller('userCtrl', function($scope, $rootScope, dbFactory, fileUpload) {
    $scope.user = {};

    dbFactory.select('user', 'id', $rootScope.loggedUserID).then(function(res) {
        $scope.user = res[0];
    });

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

                    $scope.user.avatar_path = data.avatar_path;
                }
            );

        }
    };

    $scope.profilpicdel = function() {
        dbFactory.fileDelete('user', $rootScope.loggedUserID).then(function(res) {
            $scope.user.avatar_path = null;
            alert('Profilkép törölve!');
        });
    }

});