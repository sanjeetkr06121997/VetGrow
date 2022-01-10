<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UserCount.aspx.cs" Inherits="StudentRegisition.Total_User_Show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
                <div class="inner">
                    <h1>
                        <label id="count"></label>
                    </h1>

                    <p>Total User Regisiter </p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <%--              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>--%>
            </div>
        </div>
                <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
                <div class="inner">
                    <h1>
                        <label id="count1"></label>
                    </h1>

                    <p>Total User Regisiter </p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                <%--              <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>--%>
            </div>
        </div>

        <!-- ./col -->
        <%--        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
                <div class="inner">
                    <h3>53<sup style="font-size: 20px">%</sup></h3>

                    <p>Bounce Rate</p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>--%>
        <!-- ./col -->
<%--        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
                <div class="inner">
                    <h3>
                        <label id="count1" runat="server"></label>

                    </h3>

                    <p>Total User Registrations</p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                 <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>--%>
        <!-- ./col -->
        <%--        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
                <div class="inner">
                    <h3>65</h3>

                    <p>Unique Visitors</p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>--%>
        <!-- ./col -->
    </div>
    <script type="text/javascript">
        var sessionValue = '<%= Session["count1"] %>';
        //alert(sessionValue); 
        //Reference the Label.
        var Count = document.getElementById("count1");
        // alert(count);
        //Copy the TextBox value to Label.
        Count.innerHTML = sessionValue;
    </script>
        <script type="text/javascript">
            var sessionValue = '<%= Session["count"] %>';
            //alert(sessionValue); 
            //Reference the Label.
            var Count = document.getElementById("count");
            // alert(count);
            //Copy the TextBox value to Label.
            Count.innerHTML = sessionValue;
        </script>

</asp:Content>
