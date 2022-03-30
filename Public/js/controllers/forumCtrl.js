app.controller('forumCtrl', function($scope, $rootScope, dbFactory) {

    $scope.forums = [];
    $scope.db = [];

    dbFactory.selectAll('forum').then(function(res) {
        $scope.forums = res;
        for (let i = 0; i < $scope.forums.length; i++) {
            $scope.db[i] = 0;
        }
    });
});