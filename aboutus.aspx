<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="WebApplication1.aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="https://tinymce.cachefly.net/4.0/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({ selector: 'textarea', width: 300 });
    </script>
    <script type = "text/javascript">
        function ValidateTinyMCE(sender, args) {
            var isValid = true;
            var txtBody = tinyMCE.get('<%=txtBody.ClientID%>');
            if (txtBody.getContent() == "") {
                isValid = false;
            }
            else {
                //Check for space tag.
                if (txtBody.getContent() == "<p>&nbsp;</p>") {
                    //Clear TinyMCE.
                    txtBody.execCommand('mceSetContent', false, "");
                    isValid = false;
                }
            }
            args.IsValid = isValid;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">

                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <table border="0">
    <tr>
        <td>Name:</td>
        <td><asp:TextBox ID="txtName" runat="server"/></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="required" ControlToValidate="txtName"/></td>
    </tr>
    <tr>
        <td>Subject:</td>
        <td><asp:TextBox ID="txtSubject" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="required"
                ControlToValidate="txtSubject"/></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        <td>
           
            <asp:RegularExpressionValidator ID="valRegEx" runat="server" ControlToValidate="txtEmail"
                ValidationExpression=".*@.*\..*" ErrorMessage="*Invalid Email address." Display="dynamic"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="required"
                ControlToValidate="txtEmail"/>
        </td>
    </tr>
    <tr>
        <td valign="top">Body:</td>
        <td><asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"/></td>
        <td valign="top"><asp:CustomValidator ID="CustomValidator1" ClientValidationFunction = "ValidateTinyMCE" runat="server" ErrorMessage="required"></asp:CustomValidator></td>
    </tr>
    <tr>
        <td></td>
        <td><asp:FileUpload ID="FileUpload1" runat="server"/></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td><asp:Button ID="btnSend" runat="server" Text="Send" OnClick="Send"/></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td><asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green"/></td>
    </tr>
</table>
                    </div>
                </div>
            </div>
        </div>

    </div>



</asp:Content>
