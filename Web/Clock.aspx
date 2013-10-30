<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clock.aspx.cs" Inherits="Web.Clock" %>

<!DOCTYPE html>
<html ng-app>
<head id="Head1" runat="server">
    <title>Clock</title>
</head>
<body>
    <div ng-controller="MyController">
        <span>{{ clock }}</span>
    </div>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
    <script type="text/javascript">
        var MyController = function ($scope, $element) {
            var updateClock = function () {
                var date = new Date();
                $scope.clock = date.getFullYear() + "-" +
                    (date.getMonth() + 1) + "-" +
                    date.getDate() + " " +
                    date.getHours() + ":" +
                    date.getMinutes() + ":" +
                    date.getSeconds();
            };

            var timer = setInterval(function () {
                $scope.$apply(updateClock);
            }, 1000);

            updateClock();
        };
    </script>
</body>
</html>
