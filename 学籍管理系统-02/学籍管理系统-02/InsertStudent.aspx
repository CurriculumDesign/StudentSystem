<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertStudent.aspx.cs" Inherits="学籍管理系统_02.InsertStudent" %>

<!DOCTYPE html>




<div class="pageContent">
	<form id="form1" runat="server">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>学 号：</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			</p>
			<p>
				<label>姓 名：</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
			</p>
			<p>
				<label>性别：</label>
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>男</asp:ListItem>
                    <asp:ListItem>女</asp:ListItem>
                </asp:DropDownList>
                
			</p>
			<p>
				<label>年龄：</label>
                <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
			</p>
            <p>
				<label>班 级：</label>
				<input type="hidden" name="orgLookup.id" value="${orgLookup.id}"/>
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="高一">高一</asp:ListItem>
                    <asp:ListItem Value="高二">高二</asp:ListItem>
                    <asp:ListItem Value="高三">高三</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 21px">
                    <asp:ListItem>一班</asp:ListItem>
                    <asp:ListItem>二班</asp:ListItem>
                    <asp:ListItem>三班</asp:ListItem>
                    <asp:ListItem>四班</asp:ListItem>
                    <asp:ListItem>五班</asp:ListItem>
                    <asp:ListItem>六班</asp:ListItem>
                    <asp:ListItem>七班</asp:ListItem>
                    <asp:ListItem>八班</asp:ListItem>
                    <asp:ListItem>九班</asp:ListItem>
                    <asp:ListItem>十班</asp:ListItem>
                </asp:DropDownList>
			</p>
			
			<p>
				<label>联系方式：</label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
			</p>
            <p>
				<label>家庭住址：</label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
			</p>
            
            
		</div>
		<div class="formBar">
			<ul>
				
			    <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Button1_Click" />
				<asp:Button ID="Button2" runat="server" style="margin-left: 41px" Text="取消" OnClick="Button2_Click" />
			</ul>
		</div>
	</form>
</div>














