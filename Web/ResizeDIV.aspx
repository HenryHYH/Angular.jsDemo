<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResizeDIV.aspx.cs" Inherits="Web.ResizeDIV" %>

<!DOCTYPE html>
<html ng-app="MyApp">
<head>
    <meta charset="utf-8" />
    <title>Resize div</title>
    <style type="text/css">
        .red div { background-color: Red; }
        .blue div { background-color: Blue; }
    </style>
</head>
<body>
    <div ng-controller="BoxCtrl" ng-class="mainClass">
        <div style="width: 100px; height: 100px;" ng-click="click()">
        </div>
        <p>
            {{ w }} x {{ h }}</p>
        <p>
            W:
            <input type="text" ng-model="w" /></p>
        <p>
            H:
            <input type="text" ng-model="h" /></p>
    </div>
    <script type="text/javascript" src="Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
    <script type="text/javascript" charset="utf-8">
        var BoxCtrl = function ($scope, $element) {
            var e = $element.children().eq(0); //$element 就是一个 jQuery 对象
            $scope.w = e.width();
            $scope.h = e.height();
            $scope.mainClass = "red";

            $scope.click = function () {
                $scope.w = parseInt($scope.w) + 10;
                $scope.h = parseInt($scope.h) + 10;
                $scope.mainClass = $scope.mainClass == "blue" ? "red" : "blue";
            }

            $scope.$watch('w', function (to, from) {
                e.width(to);
            });

            $scope.$watch('h', function (to, from) {
                e.height(to);
            });
        }

        //angular.bootstrap(document.documentElement);
        angular.module("MyApp", []);
    </script>
    <div ng-controller="TestCtrl">
        {{ data | orderBy: 'age' }}
        <br />
        {{ data | orderBy: '-age' }}
        <br />
        {{ data | orderBy: '-age' | limitTo: 2 }}
        <br />
        {{ data | orderBy: ['-age', 'name'] }}
        <br />
    </div>
    <script type="text/javascript">
        var TestCtrl = function ($scope) {
            $scope.data = [{ name: 'B', age: 4 }, { name: 'A', age: 1 }, { name: 'D', age: 3 }, { name: 'C', age: 3 }, ];
        }
        angular.bootstrap(document.documentElement);
    </script>
</body>
</html>
