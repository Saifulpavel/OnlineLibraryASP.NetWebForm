<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="OnlineLibrary.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col text-center">
                        <img width="100" src="img/generaluser.png"/>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col text-center">
                           <h4>Your Profile</h4>
                           <span>Account Status - </span>
                           <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your Status"></asp:Label>
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
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Date of Birth</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Contact No</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>State</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
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
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Pincode</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col text-center">
                           <span class="badge badge-pill badge-info">Login Credentials</span>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Old Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Email ID" TextMode="Password" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="Email ID" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                           <div class="form-group text-center">
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" />
                           </div>
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br/><br/>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col text-center">
                        <img width="100" src="img/books1.png"/>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col text-center">
                        <h4>Your Issued Books</h4>
                        <asp:Label class="badge badge-pill badge-info" ID="Label2" runat="server" Text="Your Issued Books"></asp:Label>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr/>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
