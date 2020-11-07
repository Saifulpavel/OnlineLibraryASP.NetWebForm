<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="OnlineLibrary.adminlogin" %>
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
                                <img src="img/adminuser.png" width="150"/>
                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="col">
                                <h3>Admin Login</h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Email</label>
                                <div class="form-group">                                    
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Password</label>
                                <div class="form-group">                                   
                                    <asp:TextBox ID="TextBox2" Cssclass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">                                   
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" />
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
