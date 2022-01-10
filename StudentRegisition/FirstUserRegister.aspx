<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FirstUserRegister.aspx.cs" Inherits="StudentRegisition.FirstUserRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration |Page</title>
</head>
<body>
    <form id="form1" runat="server"><br />
        <h1 class="text-center">Register Your Acccount</h1>
        <div class="container ">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Name</label>
                        <asp:TextBox ID="TxtName" runat="server" PlaceHolder="Enter Your Name" class="form-control"/>
                        <asp:RequiredFieldValidator ID="rqvName" runat="server" ControlToValidate="TxtName" ErrorMessage="Name Field is Required" ForeColor="Red" Display="Dynamic" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Email</label>
                        <asp:TextBox ID="TxtEmail" runat="server"   PlaceHolder="Enter Your Email" class="form-control" />
                        <asp:RequiredFieldValidator ID="rqvEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email Field is Required" ForeColor="Red" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="rqxEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Enter Valid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"  Display="Dynamic"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>PhoneNo</label>
                        <asp:TextBox ID="TxtPhone" runat="server"   PlaceHolder="Enter Your Phone Number" class="form-control" />
                        <asp:RequiredFieldValidator ID="rqvPhone" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Phone Field is Required" ForeColor="Red" Display="Dynamic" />

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Address</label>
                        <asp:TextBox ID="TxtAddress" runat="server"   PlaceHolder="Enter Your Local Address" class="form-control" />
                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-md-3">
                    <div class="form-group">
                        <label>Date OF Birth</label>
                        <asp:TextBox ID="TxtBirth" runat="server"  TextMode="date" class="form-control" />
                    </div>
                </div>
                <div class="col-md-3">
                    <label>Course</label>
                    <div class="form-group">
                       <asp:DropDownList ID="TxtCourse" runat="server" CssClass="form-control">
                         
                        </asp:DropDownList>
                       </div>
                </div>  
                  <div class="col-md-3">
                    <label>Course</label>
                    <div class="form-group">
                       <asp:DropDownList ID="DDCountry" runat="server" CssClass="form-control">
                         
                        </asp:DropDownList>
                       </div>
                </div>  
                  <div class="col-md-6">
                      <div class="form-group">
                      <label>Gender</label>
                          <asp:RadioButtonList ID="rdGender" runat="server"  class="radio" RepeatDirection="Horizontal">
                              <asp:ListItem Text="Male" Value="Male" class="radio-inline"></asp:ListItem>
                              <asp:ListItem Text="Female" Value="Female" class="radio-inline"></asp:ListItem>
                          </asp:RadioButtonList>
                     </div>
                      </div>
            </div>
              <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Password</label>
                        <asp:TextBox ID="TxtPassword" runat="server"   PlaceHolder="Enter Your Password" TextMode="Password" class="form-control" />
                        <asp:RequiredFieldValidator ID="rqvPassword" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Password Field is Required" ForeColor="Red" Display="Dynamic" />

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <asp:TextBox ID="TxtConfirmPassword" runat="server"   PlaceHolder="Enter Your Confirm Password" TextMode="Password" class="form-control" />
                        <asp:RequiredFieldValidator ID="rqvConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword" ErrorMessage="Confirm Password Field is Required" ForeColor="Red" Display="Dynamic"/>
                        <asp:CompareValidator ID="cmpConfirmPassword" runat="server" ControlToValidate="TxtPassword" ControlToCompare="TxtConfirmPassword" ErrorMessage="Password did not Match" ForeColor="Red" Display="Dynamic"/>

                    </div>
                </div>
            </div>
             <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label>Age</label>
                    <asp:TextBox ID="TxtAge" runat="server" TextMode="Number" class="form-control"/>
                        <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="TxtAge" MinimumValue="15" MaximumValue="30" ErrorMessage="Please field age between 15 to 30" ForeColor="Red" />
                    </div>
                  </div>
            </div>
            <div class="row">
                  <div class="col-md-12">
                      <div class="checkbox">
                         <asp:CheckBox ID="ChkCheckBox" runat="server" Text="Are you sure" CssClass="checkbox-inline" />
                     </div>
                  </div>
            </div>
              <div class="row">
                <div class="col-md-12">
                    <asp:Button ID="TxtRegisterBtn" runat="server" Text="Register" CssClass="btn btn-block btn-primary" OnClick="TxtRegisterBtn_Click" />
                    <asp:Button ID="TxtCancelBtn" runat="server" Text="Cancel" CssClass="btn btn-block btn-warning" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
