<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Login.aspx.cs" Inherits="Tutar_Management_Project.Tutor_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <br />

    <div class="container">
    <div class="row">
        <div class="col-md-4 mx-auto" style="box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75); -webkit-box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75); -moz-box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75);">
             <br />
            <div class="p-5 mb-4 text-center text-white bg-primary">

                <h2>Tutor Login</h2>
            </div>
            <asp:TextBox ID="UsernameTxt" placeholder="Enter Username" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UsernameTxt" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="PasswordTxt" placeholder="Enter Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="PasswordTxt" Display="Dynamic" SetFocusOnError="true" ForeColor="Red" runat="server" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>

            <br />
            <asp:Button ID="Tutor_LoginBtn" runat="server" Text="Login" OnClick="Tutor_LoginBtn_Click" CssClass="btn btn-primary w-100" />
            <br />
           
         <%-- <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary w-100" /> <br />--%>
           
           <div class="text-center">

                 <a href="Student_Login.aspx" class="text-center">Login As a Student</a>
               
            </div>
            <br />
        </div>

    </div>
</div>
    <br />
</asp:Content>
