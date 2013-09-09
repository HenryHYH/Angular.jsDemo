<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Todo.aspx.cs" Inherits="Web.Todo" %>

<!DOCTYPE html>
<html ng-app>
<head runat="server">
    <title>TODO list</title>
    <style type="text/css">
        .done-true { text-decoration: line-through; color: #ccc; }
        .done-false { }
    </style>
</head>
<body>
    <h2>
        TODO</h2>
    <div ng-controller="TodoControl">
        <span>{{remaining()}} of {{todos.length}} remaining</span> [ <a href="" ng-click="archive()">
            Archive</a> ]
        <ul>
            <li ng-repeat="todo in todos">
                <input type="checkbox" ng-model="todo.done">
                <span class="done-{{todo.done}}">{{todo.text}}</span> </li>
        </ul>
        <form ng-submit="addTodo()">
        <input type="text" ng-model="todoText" size="30" placeholder="add new todo here" />
        <input type="submit" value="add" />
        </form>
    </div>
    <script type="text/javascript" src="Scripts/angular.min.js"></script>
    <script type="text/javascript">
        function TodoControl($scope) {
            $scope.todos = [{ text: 'learn angular', done: true }, { text: 'build an angular app', done: false}];

            $scope.addTodo = function () {
                if ($scope.todoText != undefined && $scope.todoText != '') {
                    $scope.todos.push({ text: $scope.todoText, done: false });
                    $scope.todoText = '';
                }
            };

            $scope.remaining = function () {
                var count = 0;
                angular.forEach($scope.todos, function (todo) {
                    count += todo.done ? 0 : 1;
                });
                return count;
            };

            $scope.archive = function () {
                var oldTodos = $scope.todos;
                $scope.todos = [];
                angular.forEach(oldTodos, function (todo) {
                    if (!todo.done) $scope.todos.push(todo);
                });
            };
        }
    </script>
</body>
</html>
