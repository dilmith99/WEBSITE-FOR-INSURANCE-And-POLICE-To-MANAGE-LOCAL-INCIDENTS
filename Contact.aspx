<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FirstWebApplication4Batch07.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <asp:TextBox ID="txtTestTextBox" runat="server">Hello</asp:TextBox>
    </h2>

    <address>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
            </Columns>
        </asp:GridView>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource">
            <Series>
                <asp:Series Name="Series1" XValueMember="Name" YValueMembers="Marks">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PUSL2002ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:PUSL2002ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Marks]"></asp:SqlDataSource>
    </address>
    <address>
        &nbsp;</address>
    <address>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    </address>
    <address>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="AccessDataSource">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="AccessDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PUSL2002ConnectionString3 %>" ProviderName="<%$ ConnectionStrings:PUSL2002ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [NewMarks]"></asp:SqlDataSource>
    </address>
    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
