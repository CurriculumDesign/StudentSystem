<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScoreTj.aspx.cs" Inherits="学籍管理系统_02.ScoreTj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
&nbsp;&nbsp;&nbsp; 类型：<asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>补考</asp:ListItem>
            <asp:ListItem>重修</asp:ListItem>
            <asp:ListItem Value="不及格"></asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" style="margin-left: 674px" Text="查询" Width="53px" />
        <br />
        <br />
    <table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="240">学号</th>
				<th width="230">姓名</th>
				<th width="270">班级</th>
				
				<th width="90" >语文</th>
                <th width="90" >数学</th>
                <th width="90" >英语</th>
                <th width="90" >物理</th>
                <th width="90" >化学</th>
                <th width="90" >生物</th>
				
			</tr>
		</thead>
		
			

    </table>
        <asp:GridView ID="GridView1" runat="server" ShowHeader="False" Width="1130px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
