<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="StudentRegisition.Re" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    
        <!-- google font: source sans pro -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=source+sans+pro:300,400,400i,700&display=fallback"/>
        <!-- font awesome -->
        <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css"/>
        <!-- icheck bootstrap -->
        <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>
        <!-- theme style -->
        <link rel="stylesheet" href="../../dist/css/adminlte.min.css"/>
    <style type="text/css">
        .btn-primary {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <body class="hold-transition register-page"/>
        <div class="register-box">
            <div class="register-logo">
                <a href="../../index2.html"><b>Vet</b>Grow</a>
                <div class="card-body register-card-body">
                    <p class="login-box-msg">Register Form</p>
                      <div class="col-md-4">
                        <asp:Label ID="Errormas" runat="server"  ForeColor="Red"></asp:Label>
                          <asp:Label ID="Exeception" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                    <form action="../../index.html" method="post">
                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtName" runat="server" placeholder="Name" CssClass="form-control"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtMobile" runat="server" placeholder="PhoneNo" CssClass="form-control"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-phone"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" CssClass="form-control"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <asp:TextBox ID="txtConfirmPassword" runat="server" placeholder="Re-enter Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>

                        <%--          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeterms" name="terms" value="agree">
              <label for="agreeterms">
               i agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>--%>

                        <!-- /.col -->
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                            </div>
                            <!-- /.col -->
                        </div>
                        --
                    </form>
                  

                    <%--      <div class="social-auth-links text-center">
        <p>- or -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          sign up using facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i>
          sign up using google+
        </a>
      </div>--%>

                    <a href="Login.aspx" class="text-center" style="color:green" >I already have regisitered</a>
                </div>
            </div>

            <div class="card">
                <!-- /.form-box -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.register-box -->

        <!-- jquery -->
        <script src="../../plugins/jquery/jquery.min.js"></script>
        <!-- bootstrap 4 -->
        <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- adminlte app -->
        <script src="../../dist/js/adminlte.min.js"></script>
    </div>
        </div>
    </form>
</body>
</html>
