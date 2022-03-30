var app = new angular.module('Forum-App', ['ngRoute']);

app.run(function($rootScope) {
    $rootScope.appname = 'Forum-App';
    $rootScope.company = 'Bajai SZC Türr István Technikum';
    $rootScope.author = '2/14.SZFTE';
});