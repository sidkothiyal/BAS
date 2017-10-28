<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button2" runat="server" Text="Home" Visible="false" />
    <asp:Button ID="Button1" runat="server" Text="Add New Book" Visible="false"/>
    <asp:gridview runat="server" id="gv"></asp:gridview>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>

