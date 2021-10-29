<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="OurNewWebPage.aspx.cs" 
    Inherits="FirstWebApplication4Batch07.OurNewWebPage"
    %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label><br />
            <asp:ListBox ID="lstYears" runat="server" BackColor="#FF3300" Font-Names="Ebrima"></asp:ListBox>
            <asp:ListBox ID="lstMonths" runat="server" BackColor="#FF3300" Font-Names="Ebrima"></asp:ListBox>
        </div>
    </form>
</body>
</html>
