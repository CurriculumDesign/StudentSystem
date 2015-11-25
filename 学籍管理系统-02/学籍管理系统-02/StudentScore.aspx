<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentScore.aspx.cs" Inherits="学籍管理系统_02.StudentScore" %>

<!DOCTYPE html>

<head>
    <style type="text/css">
        .auto-style1 {
            width: 482px;
        }
    </style>
</head>

<form id="form1" runat="server">

<<input type="hidden" name="status" value="${param.status}"><input type="hidden" name="keywords" value="${param.keywords}" /><input type="hidden" name="pageNum" value="1" /><input type="hidden" name="numPerPage" value="${model.numPerPage}" /><input type="hidden" name="orderField" value="${param.orderField}" /><div class="pageHeader">
	<div class="searchBar">
		<!--<ul class="searchContent">
			<li>
				<label>我的客户：</label>
				<input type="text"/>
			</li>
			<li>
			<select class="combox" name="province">
				<option value="">所有省市</option>
				<option value="北京">北京</option>
				<option value="上海">上海</option>
				<option value="天津">天津</option>
				<option value="重庆">重庆</option>
				<option value="广东">广东</option>
			</select>
			</li>
		</ul>
		-->
		<table class="searchContent">
			<tr>
				<td>
					学号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;</td>
				<td>
					&nbsp;</td>
				<td class="auto-style1">
					姓名：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;所在年级<asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>高一</asp:ListItem>
                        <asp:ListItem>高二</asp:ListItem>
                        <asp:ListItem>高三</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>一班</asp:ListItem>
                        <asp:ListItem>二班</asp:ListItem>
                        <asp:ListItem>三班</asp:ListItem>
                        <asp:ListItem>四班</asp:ListItem>
                        <asp:ListItem>五班</asp:ListItem>
                        <asp:ListItem>六班</asp:ListItem>
                        <asp:ListItem>七班</asp:ListItem>
                    </asp:DropDownList>
				</td>
			</tr>
		</table>
		<div class="subBar">
			<p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 639px" Text="查询" />
            </p>
		</div>
	</div>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="InsertScore.aspx" target="navTab"><span>添加</span></a></li>
			<li><a class="delete" href="demo/common/ajaxDone.html?uid={sid_user}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li><a class="edit" href="InsertScore.aspx?uid={sid_user}" target="navTab"><span>修改</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
	    
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="240">学号</th>
				<th width="230">姓名</th>
				<th width="260">班级</th>
				
				<th width="90" >语文</th>
                <th width="90" >数学</th>
                <th width="90" >英语</th>
                <th width="90" >物理</th>
                <th width="90" >化学</th>
                <th width="90" >生物</th>
			</tr>
		</thead>
		
			

    </table>
    <p>
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
        </p>
</div>
</form>

