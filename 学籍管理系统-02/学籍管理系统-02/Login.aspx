<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="学籍管理系统_02.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 673px; top: 323px; position: absolute; height: 25px; width: 221px; margin-top: 8px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 673px; top: 368px; position: absolute; width: 221px; height: 23px" TextMode="Password"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/登录.png" OnClick="ImageButton1_Click" style="z-index: 1; left: 674px; top: 446px; position: absolute; right: 262px" />
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/重置.png" OnClick="ImageButton2_Click" style="z-index: 1; top: 449px; position: absolute; left: 793px" />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/Login.png" />
    
    </div>
    </form>
</body>
</html>
