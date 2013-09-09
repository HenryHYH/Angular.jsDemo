<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones1Template.aspx.cs"
    Inherits="Web.Phones1Template" %>

<!DOCTYPE html>
<html ng-app>
<head runat="server">
    <title></title>
</head>
<body ng-controller="PhoneListController">
    <p>
        Total number of phones: {{phones.length}}</p>
    <ul>
        <li ng-repeat="phone in phones">{{phone.name}}
            <p>
                {{phone.snippet}}</p>
        </li>
    </ul>
    <table>
        <tr>
            <th>
                #
            </th>
        </tr>
        <tr ng-repeat="i in [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]">
            <td>
                {{i + 1}}
            </td>
        </tr>
    </table>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
    <script type="text/javascript">
        function PhoneListController($scope) {
            $scope.phones = [
            { "name": "Nexus S", "snippet": "Fast just got faster with Nexus S." },
            { "name": "Motorola XOOM™ with Wi-Fi", "snippet": "The Next, Next Generation tablet." },
            { "name": "MOTOROLA XOOM™", "snippet": "The Next, Next Generation tablet."}];
        }
    </script>
</body>
</html>
