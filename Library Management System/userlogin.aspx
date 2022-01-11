<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Library_Management_System.userlogin" %>
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
                                    <img src="images/imgs/generaluser.png" width="150px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Member Login</h2>
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
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                        placeholder="Member ID" BorderColor="#008080" ></asp:TextBox>
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
                                <hr>
                                <div class="form-group">                           
                                        <a href="usersignup.aspx" class="d-grid gap-2">
                                            <input id="Button2" class="btn btn-primary btn-block btn-lg" type="button" value="Sign Up" />
                                        </a>                                    
                                </div>

                            </div>
                        </div>
                        
                    </div>
                </div>

                <br>
                <a href="Home.aspx" class="btn btn-outline-dark" name="Back to Home">Back to Home</a>


            </div>
        </div>
    </div>
    <br>


</asp:Content>
