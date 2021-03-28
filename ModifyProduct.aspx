<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ModifyProduct.aspx.cs" Inherits="ModifyProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <table class="auto-style1">
        <tr>
            <td>
                <br />
                Purchase Id</td>
            <td>
                <asp:TextBox ID="txtPurId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Product Id</td>
            <td>
                <asp:TextBox ID="txtProductID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtProductID" ErrorMessage="Product ID Cannot Be Blank">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Product Name</td>
            <td>
                <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="Name Cannot Be Blank">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Price</td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Invalid Price" Operator="DataTypeCheck" Type="Currency">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Quantity</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Invalid Quantity" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Date of Purchase</td>
            <td>
                <asp:TextBox ID="txtDOP" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtDOP" ErrorMessage="Invalid Date" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Picture</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="169px" Width="197px" CssClass="prev" />
                <br />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server"  onchange=" readURL(this);" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Category:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Select an Item" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

