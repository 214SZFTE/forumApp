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
        });
});