<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="Tutar_Management_Project.admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>

    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="~/dist/sweetalert2.min.css" rel="stylesheet"/>
    <script src="../dist/sweetalert2.min.js"></script>
    <%--<link href="<%= ResolveUrl("~/assets/vendor/bootstrap/css/bootstrap.min.css") %>" rel="stylesheet" />--%>
</head>
<body style="background-color: whitesmoke">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mx-auto" style="box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75); -webkit-box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75); -moz-box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75);">
                     <br />
                    <div class="p-5 mb-4 text-center text-white bg-primary">

                        <h2>Admin Login</h2>
                    </div>
                    <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>

                    <br />
                    <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" CssClass="btn btn-primary w-100" /><br />
                    <br />
                    <%--<asp:Button ID="Button1" runat="server" OnClick="Login_Click" Text="Login" CssClass="btn btn-primary w-100" /> <br />--%>
                    

                </div>

            </div>
        </div>
    </form>

    <%--<script src="~/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"> </script>--%>

    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Bootstrap Bundle JS (includes Popper) from local file -->
    <script src="<%= ResolveUrl("~/assets/vendor/bootstrap/js/bootstrap.bundle.min.js") %>"></script>

    <script>
        // Example of using jQuery with Bootstrap 5
        $(document).ready(function () {
            $('#myButton').on('click', function () {
                alert('Button clicked!');
            });
        });
    </script>
</body>
</html>
