﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Scope.aspx.cs" Inherits="Web.Scope" %>

<!DOCTYPE HTML>
<html lang="zh-cn" ng-app>
<head>
    <meta charset="UTF-8">
    <title>scope</title>
    <style type="text/css">
        .ng-cloak { display: none; }
    </style>
</head>
<body>
    <div class="ng-cloak" ng-controller="ControllerA">
        Hello {{name}}!;
    </div>
    <div class="ng-cloak" ng-controller="ControllerB">
        Hello {{name}}!;
        <div class="ng-cloak" ng-controller="ControllerC">
            Hello {{name}}!;
            <div class="ng-cloak" ng-controller="ControllerD">
                Hello {{name}}!;
            </div>
        </div>
    </div>
    <script src="Scripts/angular.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ControllerA($scope) {
            $scope.name = 'Kitty';
        }

        function ControllerB($scope) {
            $scope.name = 'Lcllao';
        }

        function ControllerC($scope) {
            $scope.name = 'Jeffrey';
        }

        function ControllerD($scope) {

        }
    </script>
</body>
</html>
