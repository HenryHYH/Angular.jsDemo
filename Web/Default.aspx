<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web.Default" %>

<!DOCTYPE html>
<html ng-app>
<head runat="server">
    <title>Hello Angular</title>
</head>
<body>
    <div>
        <label>
            Name:</label>
        <input type="text" ng-model="Name" placeholder="Input your name" />
        <hr />
        <h1>
            Hello {{Name}}!</h1>
        <hr />
        <p>
            1 + 2 = {{1 + 2}}</p>
    </div>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
</body>
</html>
