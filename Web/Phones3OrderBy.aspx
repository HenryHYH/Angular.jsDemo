<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones3OrderBy.aspx.cs"
    Inherits="Web.Phones3OrderBy" %>

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
        function PhoneListController($scope) {
            $scope.phones = [
            { "name": "Nexus S", "snippet": "Fast just got faster with Nexus S.", "age": 0 },
            { "name": "Motorola XOOM™ with Wi-Fi", "snippet": "The Next, Next Generation tablet.", "age": 1 },
            { "name": "MOTOROLA XOOM™", "snippet": "The Next, Next Generation tablet.", "age": 2}];

            $scope.order = 'age';
        }
    </script>
</body>
</html>
