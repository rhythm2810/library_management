<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Library_Management_System.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <br>
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/imgs/adminuser.png" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Admin Login</h2>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                        placeholder="Username" BorderColor="#008080"></asp:TextBox>
                                </div>
                          
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                        placeholder="Password" TextMode="Password" BorderColor="#008080"></asp:TextBox>
                                </div>
                                <hr>
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                        <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success btn-block btn-lg" OnClick="Button1_Click" />                                    
                                    </div>
                                </div>
                                

                            </div>
                        </div>
                        
                    </div>
                </div>

                <br>
                <center>
                <a href="Home.aspx" class="btn btn-outline-dark" name="Back to Home">Back to Home</a>
                </center>

            </div>
        </div>
    </div>
    <br>


</asp:Content>