<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Library_Management_System.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


    <br>
    
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">                               
                <div class="card">
                   
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/imgs/generaluser.png" width="100px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Sign Up</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">

                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                        placeholder="Full Name" BorderColor="#008080" ></asp:TextBox>
                                </div>
                             </div>

                             <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" 
                                        placeholder="Date of Birth" BorderColor="#008080" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">

                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" 
                                        placeholder="Contact No." BorderColor="#008080" TextMode="Number"></asp:TextBox>
                                </div>
                             </div>

                             <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" 
                                        placeholder="Email ID" BorderColor="#008080" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">

                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server"
                                       BorderColor="#008080" >

                                        <asp:ListItem Text="Select" Value="Select" />                                      
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />                                                                               
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Orissa" Value="Orissa" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />                                                                                                                                                                
                                        <asp:ListItem Text="Uttrakhand" Value="Uttrakhand" />                                                                                                                                                                                                        
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />


                                    </asp:DropDownList>
                                </div>
                             </div>

                             <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" 
                                        placeholder="City" BorderColor="#008080" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" 
                                        placeholder="Pincode" BorderColor="#008080"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-12">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" 
                                        placeholder="Full Address" BorderColor="#008080" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                             </div>                            
                        </div>

                        <hr>

                        <center>
                        <span class="badge rounded-pill bg-primary">Login Credentials</span>
                        </center>

                        <br>

                        <div class="row">

                            <div class="col-md-6">
                                <label>Member&nbsp; ID</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox6" runat="server" 
                                        placeholder="User ID" BorderColor="#008080" ></asp:TextBox>
                                </div>
                             </div>

                             <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="TextBox10" runat="server" 
                                        placeholder="Password" BorderColor="#008080" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <hr>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <div class="d-grid gap-2">
                                        <asp:Button ID="Button3" runat="server" Text="Sign Up" class="btn btn-success btn-block btn-lg" OnClick="Button3_Click" />                                    
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                                
                    </div>
                          
                </div>             
            </div>                        
        </div>
        <br>       
    </div>

    <div class="row">
        <center>
            <a href="Home.aspx" class="btn btn-outline-dark" name="Back to Home">Back to Home</a>
        </center>
    </div>
    <hr>
        

</asp:Content>
