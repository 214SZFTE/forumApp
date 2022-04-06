app.controller('loginCtrl', function($scope, $location, $rootScope, dbFactory) {
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
            dbFactory.logincheck('user', $scope.user.name, CryptoJS.SHA1($scope.user.pass).toString()).then(function(res) {
                if (res.data.length == 0) {
                    alert('Hibás belépési adatok!');
                } else {
                    $rootScope.loggedUserID = res.data[0].id;
                    $rootScope.loggedUser = res.data[0].username;
                    $rootScope.loggedUserAvatar = res.data[0].avatar_path;
                    $rootScope.loggedIn = true;
                    $scope.userData = {
                        ID: res.data[0].id,
                        name: res.data[0].username,
                        email: res.data[0].email,
                        avatar: res.data[0].avatar_path,
                        rights: res.data[0].rights
                    }
                    sessionStorage.setItem('forum-app', angular.toJson($scope.userData));
                    $location.path('#!/');

                    /*   let data = {
                           last_login: ''
                       }
                       dbFactory.update('user', $scope.userData.ID, data).then(function(res) {
                     */

                    //   });
                }
            });
        }
    }

    $scope.logout = function() {
        sessionStorage.removeItem('forum-app');
        $rootScope.loggedUser = "";
        $rootScope.loggedUserID = null;
        $rootScope.loggedUserRight = "";
        $rootScope.loggedUserAvatar = "";
        $rootScope.loggedIn = false;
        $scope.user = {};
        $location.path('#!/');
    }
});