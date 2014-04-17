<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="msplab.manage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <p>簡易管理畫面</p>
        <p>
            選擇梯次<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" DataTextField="a_date" DataValueField="a_date" Rows="1">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
            </asp:ListBox>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="a_name" HeaderText="姓名" SortExpression="a_name" />
                <asp:BoundField DataField="a_school" HeaderText="學校" SortExpression="a_school" />
                <asp:BoundField DataField="a_depart" HeaderText="科系" SortExpression="a_depart" />
                <asp:BoundField DataField="a_fb" HeaderText="FB" SortExpression="a_fb" />
                <asp:BoundField DataField="a_email" HeaderText="Email" SortExpression="a_email" />
                <asp:BoundField DataField="a_phone" HeaderText="手機" SortExpression="a_phone" />
                <asp:BoundField DataField="a_date" HeaderText="梯次" SortExpression="a_date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msptestDBConnectionString %>" SelectCommand="SELECT * FROM [lab] WHERE ([a_date] = @a_date)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="a_date" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:msptestDBConnectionString %>" OnSelected="SqlDataSource2_Selected" SelectCommand="SELECT DISTINCT * FROM [lab] WHERE ([a_date] = @a_date2)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="a_date2" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
