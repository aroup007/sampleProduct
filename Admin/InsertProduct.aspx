<%@ Page Title="New Product" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="InsertProduct.aspx.cs" Inherits="Admin_InsertProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new Product</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtId" CssClass="col-md-2 control-label">Product Id</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtId"
                    CssClass="text-danger" ErrorMessage="The product id field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPName" CssClass="col-md-2 control-label">Product Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPName" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPName"
                    CssClass="text-danger" ErrorMessage="The product name is required." />
               </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPrice" CssClass="col-md-2 control-label">Product price</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control" />
                <asp:CompareValidator CssClass="text-danger" ID="CompareValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="Invalid Price" Operator="DataTypeCheck" Type="Currency">*</asp:CompareValidator>
&nbsp;<asp:RequiredFieldValidator runat="server" ControlToValidate="txtPrice"
                    CssClass="text-danger" ErrorMessage="The price is required." />
               </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtQuantity" CssClass="col-md-2 control-label">Product Quantity</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtQuantity" CssClass="form-control" />
                <asp:CompareValidator CssClass="text-danger" ID="CompareValidator2" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Invalid Quantity" Operator="DataTypeCheck" Type="integer">*</asp:CompareValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQuantity"
                    CssClass="text-danger" ErrorMessage="The Quantity is required." />
               </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtDOP" CssClass="col-md-2 control-label">Date of Purchase</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtDOP" CssClass="form-control" />
                <asp:CompareValidator CssClass="text-danger" ID="CompareValidator3" runat="server" ControlToValidate="txtDOP" ErrorMessage="Invalid Date of Purchase" Operator="DataTypeCheck" Type="date">*</asp:CompareValidator>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtDOP"
                    CssClass="text-danger" ErrorMessage="The Date of Purchase is required." />
               </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FileUpload1" CssClass="col-md-2 control-label" style="left: 1px; top: 0px">Image</asp:Label>

            <div class="col-md-10">
                <asp:Image ID="Image1" runat="server" Width="150px" CssClass="prev" />
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" onchange=" readURL(this);"/>
                <br />
                
                </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DropDownList1" CssClass="col-md-2 control-label" style="left: 1px; top: 0px">Category</asp:Label>

            <div class="col-md-10">
                
                
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                
                
                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Select Category" InitialValue="0"></asp:RequiredFieldValidator>
                
                
                <br />
                
                </div>
        </div>
        
       
         <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="btnInsert_Click" Text="Insert" CssClass="btn btn-default" ID="btnInsert" />
            </div>
        </div>

        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>

</asp:Content>

