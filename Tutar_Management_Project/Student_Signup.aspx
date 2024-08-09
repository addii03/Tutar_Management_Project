<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="Tutar_Management_Project.Student_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" style="box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75); -webkit-box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75); -moz-box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 class="p-5 mb-4 bg-primary text-center text-white">Student SignUp</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTxt" CssClass="form-control" placeholder="Enter name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="FatherTxt" CssClass="form-control" placeholder="Enter Father name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FatherTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage=" Father Name is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="SurnameTxt" CssClass="form-control" placeholder="Enter Surname " runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="SurnameTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="SurName is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="GenderDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="GenderDropDownList" InitialValue="Select Gender" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Select Valid Gender"></asp:RequiredFieldValidator>

                <br />

                <asp:TextBox ID="AgeTxt" CssClass="form-control" placeholder="Enter Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="AgeTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Age is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be 5 to 60" ControlToValidate="AgeTxt" Display="Dynamic" ForeColor="Red" MaximumValue="60" MinimumValue="5" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />

                <asp:TextBox ID="CountryTxt" CssClass="form-control" placeholder="Enter Country name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="CountryTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>

            </div>
            <div class="col-md-4">

                <asp:TextBox ID="CityTxt" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="CityTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="AddressTxt" CssClass="form-control" TextMode="MultiLine" Rows="4" Columns="20" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="AddressTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>

                <br />

                <asp:TextBox ID="ClassTxt" CssClass="form-control" placeholder="Enter Class" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="ClassTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Class is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="GointToDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>Univercity</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="GointToDropDownList" InitialValue="Select Going To" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage=" Going To is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="SubjectTxt" CssClass="form-control" placeholder="Enter Subject" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ControlToValidate="SubjectTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Subject is Required"></asp:RequiredFieldValidator>

                <br />

            </div>
            <div class="col-md-4">
                <asp:TextBox ID="ContactTxt" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ContactTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Contact Number is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="TutionTypeDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Tution Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Offline</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ControlToValidate="TutionTypeDropDownList" InitialValue="Select Tution Type" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Tution Type is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="TutorPreferDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select TutorPreferred </asp:ListItem>
                    <asp:ListItem>Graduate</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ControlToValidate="TutorPreferDropDownList" InitialValue="Select TutorPreferred" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="TutorPreferred is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="UsernameTxt" CssClass="form-control" placeholder="Enter Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="UsernameTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Username is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="PasswordTxt" CssClass="form-control" placeholder="Enter Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="PasswordTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="PasswordTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" runat="server" ErrorMessage="Password Must Be Strong"></asp:RegularExpressionValidator>
                <br />

                <asp:TextBox ID="ConfirmPasswordTxt" CssClass="form-control" placeholder="Re-Enter Confirm Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="ConfirmPasswordTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>

                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="ConfirmPasswordTxt" ControlToCompare="PasswordTxt" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" runat="server" ErrorMessage="Both Password must be Identical"></asp:CompareValidator>

                <br />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto">
                <asp:Button ID="StudentSignUpButton" runat="server" OnClick="StudentSignUpButton_Click" Text="Submit" CssClass="btn btn-primary d-block w-100" />

            </div>

        </div>
        <br />
        <div class="row">

            <div class="col-md-5 mx-auto text-center">

                <a href="Student_Signup.aspx" class="btn btn-success">Signup As Student</a>
                <a href="Tutor_Signup.aspx" class="btn btn-info">Signup As Tutor</a>

            </div>
        </div>
        <br />
    </div>



    <br />
</asp:Content>
