<%@ Page Title="Add category" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoryCreate.aspx.cs" Inherits="WingtipToys.CategoryCreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Add new product</h1>
    <div>
        <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name" Text="Name:"></asp:Label>
        <br />
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="LabelDescription" runat="server"  Text="Description:"></asp:Label>
        <br />
        <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea>
        <br />
        
    </div>


</asp:Content>
