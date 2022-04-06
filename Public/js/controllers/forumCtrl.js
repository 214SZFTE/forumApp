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
        $scope.forum = {};
        $scope.modaltitle = 'Új fórum hozzáadása';
        $scope.modalBtn = "Hozzáad";
        $scope.modalType = "success";
        $scope.mode = 1;
    }

    $scope.modForum = function(id) {
        $scope.modaltitle = 'Fórum módosítása';
        $scope.modalBtn = "Módosít";
        $scope.modalType = "warning";
        $scope.mode = 2;
        dbFactory.select('forum', 'id', id).then(function(res) {
            $scope.forum = res[0];
        });
    }

    $scope.delForum = function(id) {
        $scope.mode = 3;
        $scope.modaltitle = 'Fórum törlése';
        $scope.modalBtn = "Törlés";
        $scope.modalType = "danger";
        dbFactory.select('forum', 'id', id).then(function(res) {
            $scope.forum = res[0];
        });
    }

    $scope.submit = function() {

        //insert
        if ($scope.mode == 1) {
            if ($scope.forum.name == null) {
                alert('Nem adtál meg minden adatot!');
            } else {
                dbFactory.insert('forum', $scope.forum).then(function(res) {
                    $scope.forums.push($scope.forum);
                    $scope.forum = {};
                });
            }
        }

        //update
        if ($scope.mode == 2) {
            if ($scope.forum.name == null) {
                alert('Nem adtál meg minden adatot!');
            } else {
                $scope.forum.user_id = 1
                $scope.forum.theme_id = 1
                dbFactory.update('forum', $scope.forum.id, $scope.forum).then(function(res) {
                    let index = $scope.forums.findIndex(item => item.id === $scope.forum.id);
                    $scope.forums[index] = $scope.forum;
                    $scope.forum = {};
                });
            }
        }

        // delete
        if ($scope.mode == 3) {
            dbFactory.delete('forum', $scope.forum.id).then(function(res) {
                let index = $scope.forums.findIndex(item => item.id === $scope.forum.ID);
                $scope.forums.splice(index, 1);
                $scope.forum = {};
            });
        }
    }
});