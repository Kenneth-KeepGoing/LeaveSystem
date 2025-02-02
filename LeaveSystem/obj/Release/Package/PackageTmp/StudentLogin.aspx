﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="SIMSystem.StudentLogin" %>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>员工登录页面</title>
      <link rel="icon" sizes="any"  href="/Img/heard.png"/>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
       <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  </head>

  <body>
  <form id="form1" runat="server">
  <div class="container" style="width: 400px;" >
    <h3 style="text-align: center;">学生登录</h3>

    <div action="${pageContext.request.contextPath}/loginSerlvet" method="post" runat="server">
        <div class="form-group" >
            <label>账号：</label>
               <asp:TextBox ID="TID" runat="server"  class="form-control" placeholder="请输入用户名"  ></asp:TextBox>
        </div>
        <div class="form-group">
            <label>密码：</label>
              <asp:TextBox ID="TPwd" runat="server" TextMode="Password" class="form-control" placeholder="请输入密码" > </asp:TextBox>
        </div>
        <hr/>
        <div class="form-group" style="text-align: center;">
          <asp:Button ID="Submit" runat="server" Text="登录" class="btn btn btn-primary"  onclick="Submit_Click" style="margin-bottom: 0px" />
            
        </div>
    </div>

    <!-- 出错显示的信息框 -->
    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" >
            <span>&times;</span>
        </button>
        <strong>请登录！</strong>
    </div>
</div>
</form>
  </body>
</html>
