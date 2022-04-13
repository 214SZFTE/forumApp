app.controller('themeCtrl', function($scope,dbFactory,$rootScope) {
    
    $scope.forums=[];
    $scope.$upgrade=false;
    $scope.ModThemeId='';
    dbFactory.selectAll('theme').then(function(res){
        $scope.forums=res;
    })
    
    $scope.insert=function(){
        if($scope.themeTitle!="")
        {
            dbFactory.select('theme', 'name', $scope.themeTitle).then(function(res) {
                if (res.length > 0) {
                    alert('Ez a téma már foglalt!');
                } 
                else {

                    let data = {
                            user_id:$rootScope.loggedUserID,	
                            name:$scope.themeTitle,
                            timestamp:null
                    }

                    dbFactory.insert('theme', data).then(function(res) {
                        $scope.themeTitle =null;
                        alert('Téma felvéve!');
                    });
                }
            });
        }
    }

    $scope.mod=function(id){
        dbFactory.select('theme', 'id', id).then(function(res) {
            $scope.themeTitle=res[0].name;
            $scope.ModThemeId=res[0].id;})
            $scope.upgrade=true;
    }
    
    $scope.modif=function(){
        let values={
            "name":$scope.themeTitle
        }
        
        dbFactory.update('theme',$scope.ModThemeId,values).then(function(res){
        console.log(res)})
    }


    $scope.del=function(id){
        dbFactory.delete('theme',id).then(function(res){
            alert("Téma törölve!");
        })

    }
});
