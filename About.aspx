<%@ Page Title="About Batch 07" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FirstWebApplication4Batch07.About" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Login Form</h2><h2><%: System.DateTime.Now %></h2>
    <p>


        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Telephone"></asp:Label>
        <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>




        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="dsAccessDataSource" Height="74px" Width="210px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
            </Columns>
        </asp:GridView>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="dsAccessDataSource">
            <series>
                <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Marks">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:SqlDataSource ID="dsAccessDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PUSL2002ConnectionString %>" ProviderName="<%$ ConnectionStrings:PUSL2002ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Marks]"></asp:SqlDataSource>


    </p>
    <p>


        &nbsp;</p>
    <p>


        &nbsp;</p>
    <p>


        </p>
    
    
</asp:Content>
