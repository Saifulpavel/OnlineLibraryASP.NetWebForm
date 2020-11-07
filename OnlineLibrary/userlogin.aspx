<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="OnlineLibrary.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row text-center">
                            <div class="col">
                                <img src="img/generaluser.png" width="150"/>
                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="col">
                                <h3>Member Login</h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">                                    
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Password</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">                                   
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" />
                                </div>

                                <div class="form-group">
                                    <a href="usersignup.aspx" class="text-decoration-none"><input id="Button2" class="btn btn-info btn-block btn-lg" type="button" value="Sign Up" /></a>
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
