<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones6-Detail.aspx.cs"
    Inherits="Web.Phones6_Detail" %>

<a href="#/phones">Back</a>
<hr />
TBD: detail view for {{phoneId}}
<hr />
<span>{{phone.name}}</span><br />
<span>{{phone.name | uppercase}}</span>
<p>
    <img ng-src="{{phone.imageUrl}}" />
</p>
<p>
    {{phone.snippet}}</p>
<p>
    <label>
        Age:</label>
    {{phone.age}}</p>
<p>
    <label>
        Stop production:</label>
    {{phone.stopProduction | checkmark}}
</p>
<p>
    <label>
        Date:
    </label>
    {{phone.date | date:"yyyy/MM/dd"}} {{ 1304375948024 | date:"yyyy/MM/dd" }}
</p>
