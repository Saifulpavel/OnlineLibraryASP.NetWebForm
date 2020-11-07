<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="OnlineLibrary.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <img src="img/generaluser.png" width="100"/>
                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="col">
                                <h4>User Registration</h4>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">                                    
                                    <asp:TextBox ID="txtFullName" class="form-control" runat="server" placeholder="Full Name">FullName</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="txtDateOfBirth" class="form-control" runat="server" TextMode="Date">DateOfBirth</asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">                                    
                                    <asp:TextBox ID="txtContactNo" class="form-control" runat="server" placeholder="Contact Number" TextMode="Number">Contact No</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="txtEmail" class="form-control" runat="server" placeholder="Email ID" TextMode="Email">Email</asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">                                    
                                    <asp:DropDownList ID="cboState" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"/>
                                        <asp:ListItem Text="Dhaka" Value="Dhaka" />
                                        <asp:ListItem Text="Bagerhat" Value="Bagerhat" />
                                        <asp:ListItem Text="Jessore" Value="Jessore" />
                                        <asp:ListItem Text="Jamalpur" Value="Jamalpur" />
                                        <asp:ListItem Text="Jaipurhat" Value="Jaipurhat" />
                                        <asp:ListItem Text="Habiganj" Value="Habiganj" />
                                        <asp:ListItem Text="Gopalganj" Value="Gopalganj" />
                                        <asp:ListItem Text="Gazipur" Value="Gazipur" />
                                        <asp:ListItem Text="Gaibandha" Value="Gaibandha" />
                                        <asp:ListItem Text="Feni" Value="Feni" />
                                        <asp:ListItem Text="Faridpur" Value="Faridpur" />
                                        <asp:ListItem Text="Dinajpur" Value="Dinajpur" />
                                        <asp:ListItem Text="Cox's Bazar	" Value="Cox's Bazar" />
                                        <asp:ListItem Text="Comilla" Value="Comilla" />
                                        <asp:ListItem Text="Chuadanga" Value="Chuadanga" />
                                        <asp:ListItem Text="Chittagong" Value="Chittagong" />
                                        <asp:ListItem Text="Chandpur" Value="Chandpur" />
                                        <asp:ListItem Text="Brahmanbaria" Value="Brahmanbaria" />
                                        <asp:ListItem Text="Bogra" Value="Bogra" />
                                        <asp:ListItem Text="Bhola" Value="Bhola" />
                                        <asp:ListItem Text="Barisal" Value="Barisal" />
                                        <asp:ListItem Text="Bandarban" Value="Bandarban" />
                                        <asp:ListItem Text="Barguna" Value="Barguna" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="txtCity" class="form-control" runat="server" placeholder="City" TextMode="SingleLine" OnTextChanged="TextBox6_TextChanged">City</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="txtPinCode" class="form-control" runat="server" placeholder="Pin Code" TextMode="Number">Pin Code</asp:TextBox>
                                </div>
                            </div>
                        </div>
                        

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="txtFullAddress" class="form-control" runat="server" placeholder="Full Address" TextMode="MultiLine">Full Address</asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col text-center">
                                <span class="badge badge-pill badge-info">Login Credentials</span>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User ID</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="txtUserId" class="form-control" runat="server" placeholder="User ID" TextMode="SingleLine">User Id</asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="txtPassword" class="form-control" runat="server" placeholder="Password" TextMode="Password">Password</asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">                                   
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="btnSignUp" runat="server" Text="Sign Up" OnClick="SignUp" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <a href="homepage.aspx"><< Back To Home</a><br /><br />
            </div>
        </div>
    </div>

</asp:Content>
