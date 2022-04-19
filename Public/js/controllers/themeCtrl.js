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
                            timestamp:'NOW()'
                    }

                    dbFactory.insert('theme', data).then(function(res) {
                        let newtheme={
                                id:res.insertId,
                                user_id:$rootScope.loggedUserID,
                                name:data.name,
                                timestamp:Date.now()
                        }
                        
                        $scope.forums.push(newtheme)
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
            $rootScope.forumThemeId=id;
    }
    
    $scope.modif=function(){
        let values={
            "name":$scope.themeTitle
        }
        dbFactory.update('theme',$scope.ModThemeId,values).then(function(res){
            for (let i = 0; i < $scope.forums.length; i++) {
                if($scope.forums[i].id==$rootScope.forumThemeId){
                    $scope.forums[i].name=values.name;
                }
                $rootScope.forumThemeId=null;
            }
        })
    }


    $scope.del=function(id){
        dbFactory.delete('theme',id).then(function(res){
            for (let i = 0; i < $scope.forums.length; i++) {
                if($scope.forums[i].id==id){
                    $scope.forums.splice($scope.forums.indexOf($scope.forums[i]), 1);
                }      
            }
            alert("Téma törölve!");
        })
    }
});
