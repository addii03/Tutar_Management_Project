<%@ Page Title="" Language="C#" MasterPageFile="~/TMS_Site.Master" AutoEventWireup="true" CodeBehind="Tutor_Signup.aspx.cs" Inherits="Tutar_Management_Project.Tutor_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="container" style="box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75); -webkit-box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75); -moz-box-shadow: 1px 0px 19px 8px rgba(0,0,0,0.75);">
        <br />
        <div class="row">
            <div class="col-md-12">
                <h1 class="p-5 mb-4 bg-primary text-center text-white">Tutor SignUp</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTxt" CssClass="form-control" placeholder="Enter name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>
                <br />

                <asp:TextBox ID="SurnameTxt" CssClass="form-control" placeholder="Enter Surname name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="SurnameTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage=" Surname Name is Required"></asp:RequiredFieldValidator>


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
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age should be 20 to 80" ControlToValidate="AgeTxt" Display="Dynamic" ForeColor="Red" MaximumValue="80" MinimumValue="20" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                <br />

                <asp:TextBox ID="EmailTxt" CssClass="form-control" placeholder="Enter Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="EmailTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="EmailTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Email Is Inavlid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:DropDownList ID="MaritalStatusDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Status</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Engaged</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" ControlToValidate="MaritalStatusDropDownList" InitialValue="Select Status" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Select Valid Status"></asp:RequiredFieldValidator>

                <br />



            </div>
            <div class="col-md-4">

                <asp:TextBox ID="CountryTxt" CssClass="form-control" placeholder="Enter Country name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="CountryTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Country is Required"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="CityTxt" CssClass="form-control" placeholder="Enter City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="CityTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="City is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="AddressTxt" CssClass="form-control" TextMode="MultiLine" Rows="6" Columns="20" placeholder="Enter Address" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="AddressTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>

                <br />
                <asp:DropDownList ID="QualificationDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Qualification</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>PHD</asp:ListItem>
                    <asp:ListItem>Mphill</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="QualificationDropDownList" InitialValue="Select Qualification" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Select Valid Qualification"></asp:RequiredFieldValidator>







            </div>
            <div class="col-md-4">

                <asp:TextBox ID="DegreeTxt" CssClass="form-control" placeholder="Degree is Required" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="DegreeTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="DegreeTxt is Required"></asp:RequiredFieldValidator>


                <br />
                <asp:DropDownList ID="ExperienceDropDownList" CssClass="form-control" runat="server">
                    <asp:ListItem>Select Experience</asp:ListItem>
                    <asp:ListItem>1-Years</asp:ListItem>
                    <asp:ListItem>2-Years</asp:ListItem>
                    <asp:ListItem>3-Years</asp:ListItem>
                    <asp:ListItem>5+ Years</asp:ListItem>
                    <asp:ListItem>8+ Years</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" ControlToValidate="ExperienceDropDownList" InitialValue="Select Experience" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Select Valid Experience"></asp:RequiredFieldValidator>

                <br />
                <asp:TextBox ID="ContactTxt" CssClass="form-control" placeholder="Enter Contact Number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ControlToValidate="ContactTxt" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" runat="server" ErrorMessage="Contact Number is Required"></asp:RequiredFieldValidator>

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
                <asp:Button ID="TutorSignUpButton" runat="server" OnClick="TutorSignUpButton_Click" Text="Submit" CssClass="btn btn-primary d-block w-100" />

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
