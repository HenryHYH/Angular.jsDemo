<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NgCloak.aspx.cs" Inherits="Web.NgCloak" %>

<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <title>Bootstrap-auto</title>
    <style type="text/css">
        .ng-cloak { display: none; }
    </style>
</head>
<body>
    这里是ng-app外面的~~{{1+2}}
    <div ng-app class="ng-cloak">
        这里是ng-app里面~~~{{1+3*2}}</div>
    <script src="Scripts/angular.min.js" type="text/javascript"></script>
</body>
</html>
