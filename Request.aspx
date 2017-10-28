<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Request.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label5" runat="server" Text="No book was found! Try again or you can make a request!"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Title:" ></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Author:" ></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Edition:" ></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Email ID:" ></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox>
    <br />
    <asp:Button ID="Button3" runat="server" Text="Request" OnClick="Button3_Click"/>
</asp:Content>

