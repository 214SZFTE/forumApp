app.controller('userCtrl', function($scope, $rootScope, dbFactory, fileUpload) {
    $scope.user = {};

    dbFactory.select('user', 'id', $rootScope.loggedUserID).then(function(res) {
        $scope.user = res[0];
    });

    $scope.modify = function() {
        if ($scope.user.username == null || $scope.user.email == null) {
            alert('Nem adtál meg minden adatot!');
        } else {

            var file = $scope.user.pic;
            if (file != null) {
                var uploadUrl = "http://localhost:8080/upload";
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

            let userdata = {
                username: $scope.user.username,
                email: $scope.user.email
            }

            dbFactory.update('user', $rootScope.loggedUserID, userdata).then(function(res) {
                $rootScope.loggedUser = $scope.user.username;
                alert('Adatok módosítva!');
            });
        }
    }

    $scope.profilpicdel = function() {
        dbFactory.fileDelete('user', $rootScope.loggedUserID).then(function(res) {
            $scope.user.avatar_path = null;
            alert('Profilkép törölve!');
        });
    }

    $scope.passmod = function() {
        if ($scope.user.oldpass == null || $scope.user.newpass1 == null || $scope.user.newpass2 == null) {
            alert('Nem adtál meg minden adatot!');
        } else {
            if ($scope.user.newpass1 != $scope.user.newpass2) {
                alert('A megadott új jelszavak nem egyeznek!');
            } else {
                let pattern = /^[a-zA-Z0-9]{8,}$/;
                if (!$scope.user.newpass1.match(pattern)) {
                    alert("A jelszó nem felel meg a minimális biztonsági kritériumoknak!");
                } else {
                    dbFactory.select('user', 'id', $rootScope.loggedUserID)
                        .then(function(response) {

                            if (response[0].password != CryptoJS.SHA1($scope.user.oldpass).toString()) {
                                alert('Nem megfelelő a jelenlegi jelszó!');
                            } else {

                                let values = {
                                    "password": CryptoJS.SHA1($scope.user.newpass1).toString()
                                }

                                dbFactory.update('user', $rootScope.loggedUserID, values)
                                    .then(function(res) {
                                        $scope.user = {};
                                        alert('A jelszó módosult!');
                                    });
                            }
                        });
                }
            }
        }
    }
});