<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentRegisition.Login" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>StudentRegisition | Log in</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
</head>
<body class="hold-transition login-page">
    <form id="form1" runat="server">
        <%--            <asp:GridView ID="grdview" runat="server"></asp:GridView>--%>

        <div class="login-box">
            <div class="login-logo">
                <a href="../../index2.html"><b>Log</b>In</a>
            </div>
            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body">
                    <p class="login-box-msg">Sign in to start your session</p>

                    <%--      <form action="../../index3.html" method="post">--%>
                    <div class="form-group">
                        <div class="col-md-4">
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email"></asp:TextBox>
                        </div>

                        <span class="fas fa-envelope"></span>
                    </div>

                    <div class="form-group">
                        <div class="col-md-4">
                            <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password"></asp:TextBox>
                        </div>
                        <span class="fas fa-lock"></span>
                    </div>
                    <div class="form-group">
                        <div class="col-md-4">
                            <asp:Label ID="ErrorMas" runat="server"></asp:Label>
                        </div>

                    </div>

                </div>

                <%--            </form>--%>
                <%--        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
    --%>
                <!-- /.col -->
                <div class="col-4">
                    <asp:Button ID="txtbtn" runat="server" Text="Signin" CssClass="btn btn-primary" OnClick="txtbtn_Click" />
                    <%--            <button type="submit" class="btn btn-primary btn-block">Sign In</button>--%>
                </div>
            </div>

            <!-- /.col -->
            <%--      <div class="social-auth-links text-center mb-3">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Sign in using Google+
        </a>
      </div>--%>
            <!-- /.social-auth-links -->

            --   <p class="mb-1">
        <a href="Forget.aspx">I forgot my password</a>
      </p>
      <p class="mb-0">
<%--        <a href="" class="text-center">Register a new membership</a>--%>
      </p>--
        </div>
        <!-- /.login-card-body -->
        <!-- /.login-box -->

        <!-- jQuery -->
        <script src="../../plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../../dist/js/adminlte.min.js"></script>

    </form>
</body>
</html>
