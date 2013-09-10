<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones8Rest.aspx.cs" Inherits="Web.Phones8Rest" %>

<!DOCTYPE html>
<html ng-app="phoneModule" id="ng-app">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <div ng-view>
    </div>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
    <script type="text/javascript" src="Scripts/angular-resource.min.js"></script>
    <!--[if lt IE 8]>
        <script type="text/javascript" src="Scripts/json2.js"></script>
    <![endif]-->
    <script type="text/javascript">
        angular.module('phoneModule', ['phoneModuleFilters', 'phoneModuleServices']).config(['$routeProvider', function ($routeProvider) {
            $routeProvider.when('/phones', { templateUrl: 'Phones6-List.aspx', controller: PhoneListController }).
                when('/phones/:phoneId', { templateUrl: 'Phones6-Detail.aspx', controller: PhoneDetailController }).
                otherwise({ redirectTo: '/phones' });
        } ]);
        angular.module('phoneModuleFilters', []).filter('checkmark', function () {
            return function (input) {
                return input ? '\u2713' : '\u2718';
            };
        });
        angular.module('phoneModuleServices', ['ngResource']).factory('Phone', function ($resource) {
            return $resource('Phone.ashx?:phoneId', {}, {
                query: { method: 'GET', params: { phoneId: '' }, isArray: true }
            });
        });

    </script>
    <script type="text/javascript">
        function PhoneListController($scope, Phone) {
            $scope.phones = Phone.query();
            $scope.order = 'age';
        }

        function PhoneDetailController($scope, $routeParams, Phone) {
            $scope.phone = Phone.get({ phoneId: "id=" + $routeParams.phoneId }, function (phone) {
                //$scope.mainImageUrl = phone.images[0];
            });
        }
    </script>
</body>
</html>
