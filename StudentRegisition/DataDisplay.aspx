<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="DataDisplay.aspx.cs" Inherits="StudentRegisition.DataDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h1 style="color: blue">StudentData</h1>
    </center>
    <%--    <h2><label id="countStudent"></label>--%>
    <asp:GridView ID="grdView" runat="server" CssClass=" form-control table-hover table-primary"  OnRowCommand="grdView_RowCommand" OnRowDeleting="grdView_RowDeleting" >
        <Columns>

            <asp:TemplateField>
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" Text="DELETE" CssClass="btn btn-danger" CommandName="DELETE" CommandArgument='<%#Eval("ID") %>'/>
                    <asp:Button ID="btnUPDATE" runat="server" Text="EDIT" CssClass="btn btn-primary" CommandName="UPDATE" CommandArgument='<%#Eval("ID") %>' />
                </ItemTemplate>
                <FooterTemplate></FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <%-- <script type="text/javascript">
    var sessionValue = '<%= Session["countStudent"] %>';
    //alert(sessionValue); 
     //Reference the Label.
     var Count = document.getElementById("countStudent");
     alert(Count);
     //Copy the TextBox value to Label.
     Count.innerHTML = sessionValue;
 </script>--%>
</asp:Content>

