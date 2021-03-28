<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AllProductList.aspx.cs" Inherits="AllProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    <br />
    <asp:Button ID="btnSortASC" runat="server" Text="Sort ASC" OnClick="btnSortASC_Click" />
    
    
    <asp:Button ID="btnSortDESC" runat="server" Text="Sort DESC" OnClick="btnSortDESC_Click" />
    
    
    <asp:Button ID="btnSelectedFields" runat="server" Text="Selected Fields" OnClick="btnSelectedFields_Click" />
    
    
    <asp:Button ID="btnFieldsALIAS" runat="server" Text="Fields ALIAS" OnClick="btnFieldsALIAS_Click" />
    
    
    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
    
    
    <br />
    <br />
    <asp:Button ID="btnSearchById" runat="server" Text="Search By Id" OnClick="btnSearchById_Click" />


    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSearchText" ErrorMessage="Invalid Id" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
    
    
    <asp:Button ID="btnSearchByName" runat="server" Text="Search By Name" OnClick="btnSearchByName_Click" />
    
    
    <asp:Button ID="btnSearchLikeName" runat="server" Text="Search Like Name" OnClick="btnSearchLikeName_Click" />
    
    
    <asp:Button ID="SearchStartByName" runat="server" Text="Search Start By Name" OnClick="SearchStartByName_Click" />
    
    
    <asp:Button ID="btnSearchByPrice" runat="server" Text="Search By Price" OnClick="btnSearchByPrice_Click" />
    
    
    <br />
    <br />
    <asp:Label ID="lblSearchText" runat="server" BorderStyle="Ridge" Text="Search Text"></asp:Label>
    <asp:TextBox ID="txtSearchText" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <br />
    Total Product:<asp:Label ID="lblTotalProduct" runat="server"></asp:Label>
    <br />
    Total Price:<asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
    <br />
    Maximum Price:<asp:Label ID="lblMaxPrice" runat="server"></asp:Label>
    <br />
    Minimum Price:<asp:Label ID="lblMinPrice" runat="server"></asp:Label>
    <br />
    <br />
    
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
            <asp:BoundField DataField="PName" HeaderText="Product Name" />
            <asp:BoundField DataField="Price" DataFormatString="{0:.00}" HeaderText="Price" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="DOP" DataFormatString="{0:yyyy/MM/dd}" HeaderText="Date of Purchase" />
            <asp:TemplateField HeaderText="Picture">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Picture","./Photo/{0}") %>' Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

