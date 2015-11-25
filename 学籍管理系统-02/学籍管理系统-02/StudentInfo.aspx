<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="学籍管理系统_02.StudentInfo" %>

<!DOCTYPE html>

<head>
    <style type="text/css">
        .auto-style1 {
            width: 661px;
        }
        .auto-style2 {
            width: 661px;
            height: 25px;
        }
    </style>
</head>
<script type="text/javascript">
    var prevselitem = null;
    function selectx(row) {
        if (prevselitem != null) {
            prevselitem.style.backgroundColor = '#ffffff';
        }
        row.style.backgroundColor = 'PeachPuff';
        prevselitem = row;
    }
</script>
<<form id="pagerForm" method="post" action="demo_page1.html">
	<input type="hidden" name="status" value="${param.status}">
	<input type="hidden" name="keywords" value="${param.keywords}" />
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${model.numPerPage}" />
	<input type="hidden" name="orderField" value="${param.orderField}" />
</form>


<div class="pageHeader">
	<form id="form1" runat="server">
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
				<td class="auto-style2">
					学号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;姓 名： 
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp; 年级<asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 22px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>高一</asp:ListItem>
                        <asp:ListItem>高二</asp:ListItem>
                        <asp:ListItem>高三</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>二班</asp:ListItem>
                        <asp:ListItem>三班</asp:ListItem>
                        <asp:ListItem>四班</asp:ListItem>
                        <asp:ListItem>五班</asp:ListItem>
                        <asp:ListItem>六班</asp:ListItem>
                        <asp:ListItem>七班</asp:ListItem>
                        <asp:ListItem>一班</asp:ListItem>
                    </asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td class="auto-style1">
				    <br />
				</td>
			</tr>
		</table>
		<div class="subBar">
			<p>
                <asp:Button ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" style="margin-left: 711px" Text="查询" Width="49px" />
            </p>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="InsertStudent.aspx" target="navTab"><span>添加</span></a></li>
			<li><a class="delete" href="demo/common/ajaxDone.html?uid={sid_user}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li><a class="edit" href="InsertStudent.aspx?uid={sid_user}" target="navTab"><span>修改</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
	</div>
    <table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="200">学号</th>
				<th width="216">姓名</th>
				<th width="45">性别</th>
				<th width="45">年龄</th>
				<th width="160" align="center">班级</th>
				<th width="230">家庭住址</th>
				<th width="226">联系方式</th>
			</tr>
		</thead>
    </table>
    <asp:GridView ID="GridView1" runat="server" AllowCustomPaging="True" AllowPaging="True" ShowHeader="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="Dotted" BorderWidth="1px" CaptionAlign="Top" CellPadding="4" ForeColor="Black" Width="1130px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style1">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#66FF66" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
        
            </asp:GridView>
	<%--<div class="panelBar">
		<%--<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="200">200</option>
			</select>
			<span>条，共${totalCout}条</span>
		</div>--%>
		
		<%--<div class="pagination" targetType="navTab" totalCount="200" numPerPage="20" pageNumShown="10" currentPage="1"></div>

	</div>--%>
</div>


