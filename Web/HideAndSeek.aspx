﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HideAndSeek.aspx.cs" Inherits="Web.HideAndSeek" %>

<!DOCTYPE html>
<html lang="zh-cn" ng-app="HideAnkSeek">
<head>
    <meta charset="UTF-8">
    <title>躲猫猫</title>
    <style type="text/css">
        .ng-cloak { display: none; }
    </style>
</head>
<body>
    <span class="ng-cloak" wildcat>一碰我就跑~~来点我啊~~</span>
    <script src="Scripts/angular.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        angular.module("HideAnkSeek", []).directive("wildcat", function ($document) {
            var maxLeft = 400, maxTop = 300;
            var msg = ["我闪~~", "抓我呀~~~", "雅蠛蝶~~", "噢耶~~", "你真逊~！", "就差那么一点点了！", "继续吧~~总有一天我会累的"];
            return function (scope, element, attr) {
                element.css({
                    "position": "absolute",
                    "border": "1px solid green"
                });
                element.bind("mouseenter", function (event) {
                    element.css({
                        "left": parseInt(Math.random() * 10000 % maxLeft) + "px",
                        "top": parseInt(Math.random() * 10000 % maxTop) + "px"
                    }).text(msg[parseInt(Math.random() * 10000 % msg.length)]);
                }).bind("click", function (event) {
                    element.text("噢My Lady Gaga。。。被你逮到了。。。");
                    element.unbind("mouseenter");
                });
            };
        });
    </script>
</body>
</html>
