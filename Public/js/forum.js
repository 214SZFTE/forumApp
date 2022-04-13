var app = new angular.module('Forum-App', ['ngRoute']);

app.run(function($rootScope) {
    $rootScope.appname = 'Forum-App';
    $rootScope.company = 'Bajai SZC Türr István Technikum';
    $rootScope.author = '2/14.SZFTE';

    if (userData = angular.fromJson(sessionStorage.getItem('forum-app'))) {
        $rootScope.loggedUser = userData.name;
        $rootScope.loggedUserID = userData.ID;
        $rootScope.loggedUserRight = userData.rights;
        $rootScope.loggedUserAvatar = userData.avatar;
        $rootScope.loggedIn = true;
    } else {
        $rootScope.loggedUser = "";
        $rootScope.loggedUserID = null;
        $rootScope.loggedUserRight = "";
        $rootScope.loggedIn = false;
        $rootScope.loggedUserAvatar = "";
    }
});

app.config(function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'main.html',
            controller: 'mainCtrl'
        })
        .when('/reg', {
            templateUrl: 'registration.html',
            controller: 'loginCtrl'
        })
        .when('/login', {
            templateUrl: 'login.html',
            controller: 'loginCtrl'
        })
        .when('/profilmod', {
            resolve: {
                function($location, $rootScope) {
                    if (!$rootScope.loggedIn) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: 'profilmod.html',
            controller: 'userCtrl'
        })
        .when('/passmod', {
            resolve: {
                function($location, $rootScope) {
                    if (!$rootScope.loggedIn) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: 'passmod.html',
            controller: 'userCtrl'
        })
        .when('/theme', {
            resolve: {
                function($location, $rootScope) {
                    if (!$rootScope.loggedIn || $rootScope.loggedUserRight != 0) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: 'theme.html',
            controller: 'themeCtrl'
        })
        .when('/forumtemak', {
            templateUrl: 'forum-theme.html',
            controller: 'themeCtrl'
        });

});


app.directive('fileModel', function($parse) {
    return {
        restrict: 'A',
        link: function(scope, element, attrs) {
            var model = $parse(attrs.fileModel);
            var modelSetter = model.assign;

            element.bind('change', function() {
                scope.$apply(function() {
                    modelSetter(scope, element[0].files[0]);
                });
            });
        }
    };
});

app.service('fileUpload', function($http, $q) {

    this.uploadFileToUrl = function(file, uploadUrl) {
        var fd = new FormData();
        fd.append('file', file);

        var deffered = $q.defer();
        $http.post(uploadUrl, fd, {
            transformRequest: angular.identity,
            headers: { 'Content-Type': undefined }

        }).then(
            function(res) {
                deffered.resolve(res);
            },
            function(err) {
                deffered.reject(err);
            }
        );
        return deffered.promise;
    }
});