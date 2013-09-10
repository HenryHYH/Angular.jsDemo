<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones6RoutingAndViews.aspx.cs"
    Inherits="Web.Phones6RoutingAndViews" %>

<!DOCTYPE html>
<html ng-app="phoneModule">
<head runat="server">
    <title></title>
</head>
<body>
    <div ng-view>
    </div>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
    <script type="text/javascript">
        angular.module('phoneModule', ['phoneModuleFilters']).config(['$routeProvider', function ($routeProvider) {
            $routeProvider.when('/phones', { templateUrl: 'Phones6-List.aspx', controller: PhoneListController }).
                when('/phones/:phoneId', { templateUrl: 'Phones6-Detail.aspx', controller: PhoneDetailController }).
                otherwise({ redirectTo: '/phones' });
        } ]);
        angular.module('phoneModuleFilters', []).filter('checkmark', function () {
            return function (input) {
                return input ? '\u2713' : '\u2718';
            };
        });
    </script>
    <script type="text/javascript">
        function PhoneListController($scope, $http) {
            $http.get('Phone.ashx').success(function (data) {
                $scope.phones = data;
            });

            $scope.order = 'age';
        }

        function PhoneDetailController($scope, $routeParams, $http) {
            $scope.phoneId = $routeParams.phoneId;
            $http.get("Phone.ashx?id=" + $routeParams.phoneId).success(function (data) {
                $scope.phone = data;
            });
        }
    </script>
</body>
</html>
