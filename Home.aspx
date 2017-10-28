<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem Value="author">Author</asp:ListItem>
            <asp:ListItem Value="title">Title</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click"/>
    </div>
    </form>
</body>
</html>
