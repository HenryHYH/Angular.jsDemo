<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones6-List.aspx.cs" Inherits="Web.Phones6_List" %>

<table>
    <tr>
        <td>
            Search:
            <input type="text" ng-model="query" />
        </td>
        <td>
            Sort by:
            <select ng-model="order">
                <option value="name">Alphabetical</option>
                <option value="age">Newest</option>
                <option value="-age">Oldest</option>
            </select>
        </td>
    </tr>
</table>
<span>Now sort value is <b>{{order}}</b>.</span>
<table>
    <tr ng-repeat="phone in phones | filter:query | orderBy:order">
        <td>
            <a href="#/phones/{{phone.id}}">{{phone.name}}</a>
            <p>
                <img ng-src="{{phone.imageUrl}}" /></p>
        </td>
        <td>
            <p>
                {{phone.snippet}}</p>
        </td>
        <td>
            <p>
                <label>
                    Age:</label>
                {{phone.age}}</p>
        </td>
        <td>
            <p>
                <label>
                    Stop production:
                </label>
                {{phone.stopProduction | checkmark}}
            </p>
        </td>
    </tr>
</table>
