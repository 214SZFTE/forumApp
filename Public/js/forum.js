var app = new angular.module('Forum-App', ['ngRoute']);

app.run(function($rootScope) {
    $rootScope.appname = 'Forum-App';
    $rootScope.company = 'Bajai SZC Türr István Technikum';
    $rootScope.author = '2/14.SZFTE';
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