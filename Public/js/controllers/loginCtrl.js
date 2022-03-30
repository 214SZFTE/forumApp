app.controller('loginCtrl', function($scope, dbFactory) {
    $scope.user = {};

    $scope.regist = function() {

        if ($scope.user.name == null || $scope.user.email == null || $scope.user.pass1 == null || $scope.user.pass2 == null) {
            alert('Nem adtál meg minden adatot!');
        } else {
            if ($scope.user.pass1 != $scope.user.pass2) {
                alert('A megadott jelszavak nem egyeznek!');
            } else {
                dbFactory.select('user', 'email', $scope.user.email).then(function(res) {
                    if (res.length > 0) {
                        alert('Ez az e-mail cím már foglalt!');
                    } else {

                        let data = {
                            username: $scope.user.name,
                            email: $scope.user.email,
                            password: CryptoJS.SHA1($scope.user.pass1).toString(),
                            rights: 1
                        }

                        dbFactory.insert('user', data).then(function(res) {
                            $scope.user = {}
                            alert('A regisztráció sikeres!');
                        });
                    }
                });
            }
        }
    }

    $scope.login = function() {
        if ($scope.user.name == null || $scope.user.pass == null) {
            alert('Add meg a belépési adatokat!');
        } else {
            dbFactory.logincheck('user', $scope.user.email, CryptoJS.SHA1($scope.user.pass).toString()).then(function(res) {
                if (res.data.length == 0) {
                    alert('Hibás belépési adatok!');
                } else {
                    $rootScope.loggedIn = true;
                    $scope.loggedUser = {
                        ID: res.data[0].ID,
                        name: res.data[0].name,
                        email: $scope.user.email,
                        rights: res.data[0].rights
                    }
                    sessionStorage.setItem('keymanager', angular.toJson($scope.userData));
                    $location.path('/dashboard');
                }
            });
        }
    }

    $scope.logout = function() {}
});