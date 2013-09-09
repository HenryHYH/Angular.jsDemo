<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones2FilteringRepeaters.aspx.cs"
    Inherits="Web.Phones2FilteringRepeaters" %>

<!DOCTYPE html>
<html ng-app ng-controller="PhoneListController">
<head runat="server">
    <title>Google Phone Gallery: {{query}}</title>
</head>
<body>
    <input type="text" ng-model="query" />
    <ul>
        <li ng-repeat="phone in phones | filter:query"><span>{{phone.name}}</span>
            <p>
                {{phone.snippet}}</p>
        </li>
    </ul>
    <script type="text/javascript" src="scripts/angular.min.js"></script>
    <script type="text/javascript">
        function PhoneListController($scope) {
            $scope.phones = [
            { "name": "Nexus S", "snippet": "Fast just got faster with Nexus S." },
            { "name": "Motorola XOOM™ with Wi-Fi", "snippet": "The Next, Next Generation tablet." },
            { "name": "MOTOROLA XOOM™", "snippet": "The Next, Next Generation tablet." },
            { "name": "MOTO", "snippet": "Hello MOTO."}];
        }
    </script>
</body>
</html>
