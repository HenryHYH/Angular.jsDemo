<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones7Event.aspx.cs" Inherits="Web.Phones7Event" %>

<!DOCTYPE html>
<html ng-app id="ng-app">
<head id="Head1" runat="server">
    <title></title>
</head>
<body ng-controller="PhoneListController">
    <ul>
        <li ng-repeat="phone in phones">
            <input type="button" ng-click="hello(phone.name)" value="{{phone.name}}" onclick="alert('Hello')" />
            <a href="javascript:void(0);" ng-click="hello(phone.name)">{{phone.name}}</a>
        </li>
    </ul>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
    <!--[if lt IE 8]>
        <script type="text/javascript" src="Scripts/json2.js"></script>
    <![endif]-->
    <script type="text/javascript">
        function PhoneListController($scope, $http) {
            $http.get('Phone.ashx').success(function (data) {
                $scope.phones = data;
            });

            $scope.hello = function (name) {
                alert('Hello ' + (name || 'world') + '!');
            }
        }
    </script>
</body>
</html>
