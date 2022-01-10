<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget.aspx.cs" Inherits="StudentRegisition.Forget" %>

<!DOCTYPE html>
 <center><h1>ForgetPassword</h1></center>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                </div>
            </div> 
                <div class="form-group">
                <div class="col-md-4">
                    <label>NewPassword</label>
                    <asp:TextBox ID="txtnewPassword" runat="server" placeholder="Create new password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <label>ConfirmPassword</label>
                   
                    <asp:TextBox ID="txtconfirmPassword" runat="server" ValidationGroup="" placeholder="Re-enter password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"
                      ControlToCompare="txtnewPassword" ControlToValidate="txtconfirmPassword"></asp:CompareValidator>

                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                </div>
        </div>
        </div>
                <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
        <asp:Button ID="btnsave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnsave_Click" />
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                </div>
        </div>
        </div>

    </form>
</body>
</html>
