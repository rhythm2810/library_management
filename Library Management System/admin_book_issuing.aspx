<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_book_issuing.aspx.cs" Inherits="Library_Management_System.admin_book_issuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <br>

    <div class="container-fluid">

        <div class="row">

            <div class="col-md-5">

                <div class="card">


                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                </center>
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col">       
                                <center>
                                    <img src="images/imgs/books.png" width="100px" />
                                </center>
                            </div>
                        </div>

                        <br>




                        <div class="row">
                            <div class="col-md-6">       
                                <label>
                                    Member ID
                                </label>
                                <div class="form-group">                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                            placeholder="Member ID" BorderColor="#008080" ReadOnly="True"></asp:TextBox>                                                                           
                                </div>
                            </div>

                            <div class="col-md-6">       
                                <label>
                                    Book ID
                                </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                            placeholder="Book ID" BorderColor="#008080" ReadOnly="True"></asp:TextBox>
                                        <asp:Button ID="Button3" runat="server" Text="Go" class="btn btn-dark" /> 
                                    </div>
                                </div>
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col-md-6">       
                                <label>
                                    Member Name
                                </label>
                                <div class="form-group">                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" 
                                            placeholder="Member Name" BorderColor="#008080" ></asp:TextBox>                                                                           
                                </div>
                            </div>

                            <div class="col-md-6">       
                                <label>
                                    Book Name
                                </label>
                                <div class="form-group">                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" 
                                            placeholder="Book Name" BorderColor="#008080" ></asp:TextBox>                                   
                                </div>
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col-md-6">       
                                <label>
                                    Start Date
                                </label>
                                <div class="form-group">                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" 
                                            placeholder="Start Date" BorderColor="#008080" TextMode="Date"></asp:TextBox>                                                                           
                                </div>
                            </div>

                            <div class="col-md-6">       
                                <label>
                                    End Date
                                </label>
                                <div class="form-group">                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" 
                                            placeholder="End Date" BorderColor="#008080" TextMode="Date"></asp:TextBox>                                   
                                </div>
                            </div>
                        </div>


                        <br>
                        

                        

                        <div class="row">                            
                            <div class="form-group">
                                    <div class="d-grid gap-2">
                                        <asp:Button ID="Button4" runat="server" Text="Issue Book" class="btn btn-primary btn-block btn-lg" />                                    
                                    </div>
                            </div>
                        
                         <br>
                        </div>

                        <br>

                        <div class="row">

                            <div class="form-group">
                                    <div class="d-grid gap-2">
                                        <asp:Button ID="Button1" runat="server" Text="Return Book" class="btn btn-success btn-block btn-lg" />                                    
                                    </div>
                            </div>
                            <br>
                        </div>
                            
                        
                        <br>                                                        
                        
                    
                    
                    
                    </div>

                </div>

            </div>

            <div class="col-md-7">

                <div class="card">


                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>


                    </div>


                </div>

            </div>

        </div>
        <br>
        <div class="row">
        <center>
            <a href="Home.aspx" class="btn btn-outline-dark" name="Back to Home">Back to Home</a>
        </center>
    </div>
    <hr>

    </div>

</asp:Content>
