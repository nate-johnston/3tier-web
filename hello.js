angular.module('demo', [])
.controller('Hello', function($scope, $http) {
    $http.get('http://threetier-prod-app-1693303267.us-east-2.elb.amazonaws.com/users').
        then(function(response) {
            $scope.greeting = response.data;
        });
});
