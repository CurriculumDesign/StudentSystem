<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepwd.aspx.cs" Inherits="学籍管理系统_02.changepwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<div class="pageContent">
	
		<div class="pageFormContent" layoutH="58">

			<div class="unit">
				<label>旧密码：</label>&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			</div>
			<div class="unit">
				<label>新密码：</label>&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;</div>
			
		</div>
		<div class="formBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认" Width="54px" />
                    </div></div></li>
				<li><div class="button"><div class="buttonContent">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消" Width="54px" />
                    </div></div></li>
			</ul>
		</div>
	
</div>
    
    </div>
    </form>
</body>
</html>
