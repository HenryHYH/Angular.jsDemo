<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones4JSON.aspx.cs" Inherits="Web.Phones4JSON" %>

<!DOCTYPE html>
<html ng-app ng-controller="PhoneListController">
<head runat="server">
    <title></title>
</head>
<body>
    Search:
    <input type="text" ng-model="query" />
    Sort by:
    <select ng-model="order">
        <option value="name">Alphabetical</option>
        <option value="age">Newest</option>
        <option value="-age">Oldest</option>
    </select>
    <span>Now sort value is <b>{{order}}</b>.</span>
    <ul>
        <li ng-repeat="phone in phones | filter:query | orderBy:order">{{phone.name}}
            <p>
                {{phone.snippet}}</p>
            <p>
                <label>
                    Age:</label>
                {{phone.age}}</p>
        </li>
    </ul>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
    <script type="text/javascript">
        function PhoneListController($scope, $http) {
            $http.get('Phone.ashx').success(function (data) {
                $scope.phones = data;
            });

            $scope.order = 'age';
        }
    </script>
</body>
</html>
