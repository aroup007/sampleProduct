<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddNewCategory.aspx.cs" Inherits="AddNewCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </p>
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Category Id</td>
            <td>
                <asp:TextBox ID="txtCID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Category Name</td>
            <td>
                <asp:TextBox ID="txtCName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCName" ErrorMessage="Name cannot be blank">*</asp:RequiredFieldValidator>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </p>
</asp:Content>

