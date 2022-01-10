<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="StudentRegisition.Regisition" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <h1 class="text-align:center">RegistrationForm</h1>
    </center>
    <div class="container">
        <div class="row">
            <div class="form-group">
                <div class="col-md-4">
                    <label>Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="300">
                    </asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label>FatherName</label>
                    <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control" Width="300">
                    </asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label>MotherName</label>
                    <asp:TextBox ID="txtMotherName" runat="server" CssClass="form-control" Width="300">
                    </asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="col-md-4">
                    <label>Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Width="300">
                    </asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label>Password</label>
                    <asp:TextBox ID="txtPassord" runat="server" CssClass="form-control" TextMode="Password" Width="300">
                    </asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label>PhoneNo</label>
                    <asp:TextBox ID="txtPhoneNo" runat="server" CssClass="form-control" Width="300">
                    </asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="col-md-4">
                    <label>Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Width="300">
                    </asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label>Course</label>
                    <asp:DropDownList ID="txtQlalification" runat="server" Width="300" Height="40">
                        <asp:ListItem Text="MCA" Value="1"></asp:ListItem>
                        <asp:ListItem Text="BCA" Value="2"></asp:ListItem>

                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label>DOB</label>
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date" Width="300">
                    </asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="col-md-4">
                    <label>Gender</label>
                    <asp:RadioButtonList ID="radbtn" runat="server" Width="200">
                        <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label>Cuntry</label>
                    <asp:DropDownList ID="txtCuntry" runat="server" Width="300" Height="40">
                        <asp:ListItem Text="India" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Pakistan" Value="2"></asp:ListItem>

                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-4">
                    <label>State</label>
                    <asp:DropDownList ID="txtState" runat="server" Width="200" Height="40">
                        <asp:ListItem Text="Bihar" Value="1"></asp:ListItem>
                        <asp:ListItem Text="UP" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="col-md-6">
                    <label>JoinDate</label>
                    <asp:TextBox ID="txtJoinDate" runat="server" CssClass="form-control" TextMode="Date" Width="300"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6">
                    <label>Fee</label>
                    <asp:TextBox ID="txtFee" runat="server" CssClass="form-control" Width="340"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="col-md-3">
                    <asp:Button ID="txtSave" runat="server" Text="Save" CssClass="btn btn-success" class="form-control" Width="100" OnClick="txtSave_Click" />
                </div>

            </div>
            <div class="form-group">
                <div class="col-md-3">
                    <asp:Button ID="Button2" runat="server" Text="Cancle" CssClass="btn btn-primary" />


                </div>
            </div>
        </div>

    </div>
</asp:Content>
