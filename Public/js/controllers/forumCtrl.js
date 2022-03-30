app.controller('forumCtrl', function($scope, $rootScope, dbFactory) {

    $scope.forums = [];
    $scope.db = [];

    dbFactory.selectAll('forum').then(function(res) {
        $scope.forums = res;
        for (let i = 0; i < $scope.forums.length; i++) {
            $scope.db[i] = 0;
        }
    });

    $scope.addForum = function() {
        $scope.pizza = {};
        $scope.modaltitle = 'Új fórum hozzáadása';
        $scope.modalBtn = "Hozzáadás";
        $scope.modalType = "success";
        $scope.mode = 1;
    }

    $scope.modForum = function(id) {
        $scope.modaltitle = 'Fórum módosítás';
        $scope.modalBtn = "Módosít";
        $scope.modalType = "warning";
        $scope.mode = 2;
        dbFactory.select('forum', 'ID', id).then(function(res) {
            console.log(res);
            $scope.forum = res[0];
        });

    }

    $scope.delForum = function(id) {
        $scope.mode = 3;
        $scope.modaltitle = 'Fórum törlése';
        $scope.modalBtn = "Töröl";
        $scope.modalType = "danger";
        dbFactory.select('forum', 'ID', id).then(function(res) {
            console.log(res);
            $scope.forum = res[0];
        });
    }

    $scope.submit = function() {
        // insert
        if ($scope.mode == 1) {
            
            dbFactory.insert('forum', $scope.forum).then(function(res) {
                $scope.forums.push($scope.forum);
                $scope.forum = {};
            });
            
        }

        // update
        if ($scope.mode == 2) {
            
            dbFactory.update('forum', $scope.forum.ID, $scope.forum).then(function(res) {
                let index = $scope.forums.findIndex(item => item.ID === $scope.forum.ID);
                $scope.forums[index] = $scope.forums;
                $scope.forum = {};
            });
            
        }

        // delete
        if ($scope.mode == 3) {
            dbFactory.delete('forum', $scope.forums.ID).then(function(res) {
                let index = $scope.forums.findIndex(item => item.ID === $scope.forum.ID);
                $scope.forums.splice(index, 1);
                $scope.forum = {};
            });
        }
    }
});