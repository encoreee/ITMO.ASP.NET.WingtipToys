<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductCreate.aspx.cs" Inherits="WingtipToys.ProductCreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add new product</h1>
    <div>
        <asp:Label ID="LabelName" runat="server" AssociatedControlID="Name" Text="Name:"></asp:Label>
        <br />
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="Name"
            ErrorMessage="Product name is required" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="LabelPrice" runat="server" AssociatedControlID="PriceInput" Text="Price:" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="PriceInput" runat="server"></asp:TextBox>
        <asp:RangeValidator
            Type="Currency"
            ID="PriceValidator" runat="server"
            ControlToValidate="PriceInput"
            ErrorMessage="Price should be grater then zero. Maximum price is 600$"
            MaximumValue="600,00" MinimumValue="0,10"
            Display="Dynamic">
        </asp:RangeValidator>
        <asp:RequiredFieldValidator
            ID="PriceRequiredValidator"
            runat="server"
            ControlToValidate="PriceInput"
            EnableTheming="True"
            ErrorMessage="Price is required"
            Display="Dynamic">

        </asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="LabelCategory" runat="server" Text="Category:" Font-Bold="True"></asp:Label>
        <br />
        <asp:DropDownList 
            ID="CategoryList" 
            runat="server" 
            DataTextField="CategoryName"
            DataValueField="CategoryID" 
            ItemType="WingtipToys.Data.Models.Category" 
            SelectMethod="GetCategories">

        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="CategoryValidator" runat="server" ControlToValidate="CategoryList"
            ErrorMessage="Product category is required" Display="Dynamic"></asp:RequiredFieldValidator>

        <br />
        <asp:Label ID="LabelDecription" runat="server" Text="Description:" Font-Bold="True"></asp:Label>
        <br />
        <textarea id="TextArea1" cols="20" name="S1" rows="2"></textarea><br />
        <br />
        <asp:Label ID="LabelPath" runat="server" Text="Product image path:" Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />

    </div>



</asp:Content>
