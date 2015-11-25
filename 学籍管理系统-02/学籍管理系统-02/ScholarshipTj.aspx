<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ScholarshipTj.aspx.cs" Inherits="学籍管理系统_02.ScholarshipTj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
	<div class="searchBar">
		<div class="subBar">
			<br />
            <br />
            所在年级：<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>高一</asp:ListItem>
                <asp:ListItem>高二</asp:ListItem>
                <asp:ListItem>高三</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 24px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>一班</asp:ListItem>
                <asp:ListItem>二班</asp:ListItem>
                <asp:ListItem>三班</asp:ListItem>
                <asp:ListItem>四班</asp:ListItem>
                <asp:ListItem>五班</asp:ListItem>
                <asp:ListItem>六班</asp:ListItem>
                <asp:ListItem>七班</asp:ListItem>
            </asp:DropDownList>
		</div>
	            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="height: 21px; margin-left: 643px" Text="查询" />
                <br />
                <br />
	</div>
	</form>
</div>
	</div>
				</td>
			</tr>
		</table>
		<div class="subBar">
			<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="305">学号</th>
				<th width="200">姓名</th>
				<th width="275">班级</th>
				
				<th width="220" align="center">奖学金数目</th>
				<th width="135"align="center">奖学金等级</th>
				
			</tr>
		</thead>
		
			

    </table>
            <p>
                <asp:GridView ID="GridView1" runat="server" ShowHeader="False" Width="1130px" HorizontalAlign="Center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                    
                </asp:GridView>
            </p>
		</div>
    
    </div>
    </form>
</body>
</html>
