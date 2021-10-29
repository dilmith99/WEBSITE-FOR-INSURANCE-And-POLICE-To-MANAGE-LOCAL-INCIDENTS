<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1.aspx.cs" Inherits="FirstWebApplication4Batch07._1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="2.aspx" method="get">
        <div>
            Name:<input id="Text1" name="name" type="text" /><br />
            Email: <input id="Text2" name="email" type="text" /><br />
            Email: <input id="Text3" name="emailConfirm" type="text" /><br />
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <input id="Submit1" type="submit" value="submit" />
        </div>
    </form>
</body>
</html>
