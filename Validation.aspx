<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="FirstWebApplication4Batch07.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="txtName" 
                ErrorMessage="The name is required."></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Telephone"></asp:Label>
            <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTelephone" ErrorMessage="Invalid Telephone Number" ValidationExpression="[+\-]?[0-9]"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
