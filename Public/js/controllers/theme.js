app.controller('themeCtrl', function($scope,dbFactory) {
    
    $scope.insert=function(){
        if($scope.themeTitle!="")
        {
            dbFactory.select('theme', 'name', $scope.themeTitle).then(function(res) {
                if (res.length > 0) {
                    alert('Ez a téma már foglalt!');
                } 
                else {

                    let data = {
                            user_id:"",	
                            name:$scope.themeTitle,
                            timestamp:null
                    }

                    dbFactory.insert('theme', data).then(function(res) {
                        $scope.themeTitle = {}
                        alert('Téma felvéve!');
                    });
                }
            });
        }
    }
    $scope.mod=function(id){
        dbFactory.update('theme',id,$scope.themeTitle).then(function(res){
            $scope.themeTitle={};
            alert('Téma megváltoztatva!');

        })
        $scope.themeTitle={}
    }

    $scope.del=function(){

    }
});
