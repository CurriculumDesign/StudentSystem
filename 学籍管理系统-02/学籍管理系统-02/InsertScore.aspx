 <%@ Page Language="C#" AutoEventWireup="True" CodeBehind="InsertScore.aspx.cs" Inherits="学籍管理系统_02.InsertScore" %>

<!DOCTYPE html>




<div class="pageContent">
    <form id="form1" runat="server">
        <div class="pageFormContent" layouth="56">
            <p>
                <label>
                学 号：</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>
                姓 名：</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>
                班 级：</label>
                <input name="orgLookup.id" type="hidden" value="${orgLookup.id}" />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>高一</asp:ListItem>
                    <asp:ListItem>高二</asp:ListItem>
                    <asp:ListItem>高三</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 29px">
                    <asp:ListItem>一班</asp:ListItem>
                    <asp:ListItem>二班</asp:ListItem>
                    <asp:ListItem>三班</asp:ListItem>
                    <asp:ListItem>四班</asp:ListItem>
                    <asp:ListItem>五班</asp:ListItem>
                    <asp:ListItem>六班</asp:ListItem>
                    <asp:ListItem>七班</asp:ListItem>
                    <asp:ListItem>八班</asp:ListItem>
                    <asp:ListItem>九班</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <label>
                语 文：</label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>数 学：</label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>
                英 语：</label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>物 理：</label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>化 学：</label>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>生 物：</label>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </p>
        </div>
        <div class="formBar">
            <ul>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="保存" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" style="margin-left: 76px" Text="取消" />
            </ul>
        </div>
    </form>
</div>






