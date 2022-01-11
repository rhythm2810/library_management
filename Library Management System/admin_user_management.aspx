<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_user_management.aspx.cs" Inherits="Library_Management_System.admin_user_management" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
       $(document).ready(function () {

           //$(document).ready(function () {
           //$('.table').DataTable();
           // });

           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           //$('.table1').DataTable();
       });
   </script>
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
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col">       
                                <center>
                                    <img src="images/imgs/generaluser.png" width="100px" />
                                </center>
                            </div>
                        </div>

                        <hr>




                        <div class="row">
                            <div class="col-md-3">       
                                <label>
                                    Member ID
                                </label>
                                <div class="form-group">        
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                            placeholder="Member ID" BorderColor="#008080"></asp:TextBox> 
                                        
                                        <asp:LinkButton runat="server" class="btn btn-primary me-1 ms-1" ID="LinkButton4" OnClick="LinkButton4_Click">
                                            <i class="fas fa-check-circle"></i>
                                        </asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">       
                                <label>
                                    Full Name
                                </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                            placeholder="Full Name" BorderColor="#008080" ReadOnly="True"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5">       
                                <label>
                                    Account Status
                                </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" 
                                            placeholder="Account Status" BorderColor="#008080" ReadOnly="True"></asp:TextBox>
                                        
                                        <asp:LinkButton runat="server" class="btn btn-success me-1 ms-1" ID="LinkButton1" OnClick="LinkButton1_Click">
                                            <i class="fas fa-check-circle"></i>
                                        </asp:LinkButton>

                                        <asp:LinkButton runat="server" class="btn btn-warning me-1" ID="LinkButton2" OnClick="LinkButton2_Click1">
                                            <i class="fas fa-pause-circle"></i>
                                        </asp:LinkButton>

                                        <asp:LinkButton runat="server" class="btn btn-danger me-1" ID="LinkButton3" OnClick="LinkButton3_Click">
                                            <i class="fas fa-times-circle"></i>
                                        </asp:LinkButton>



                                        
                                    </div>
                                </div>
                            </div>


                        </div>



                        <div class="row">
                            <div class="col-md-3">       
                                <label>
                                    DOB
                                </label>
                                <div class="form-group">                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" 
                                            placeholder="DOB" BorderColor="#008080" ReadOnly="True"></asp:TextBox> 
                                        
                                </div>
                            </div>

                            <div class="col-md-4">       
                                <label>
                                    Contact No.
                                </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" 
                                            placeholder="Contact No." BorderColor="#008080" ReadOnly="True"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5">       
                                <label>
                                    Email ID
                                </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" 
                                            placeholder="Email ID" BorderColor="#008080" ReadOnly="True"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>


                        </div>



                        <div class="row">
                            <div class="col-md-4">       
                                <label>
                                    State
                                </label>
                                <div class="form-group">                                    
                                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" 
                                            placeholder="State" BorderColor="#008080" ReadOnly="True"></asp:TextBox> 
                                        
                                </div>
                            </div>

                            <div class="col-md-4">       
                                <label>
                                    City
                                </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" 
                                            placeholder="City" BorderColor="#008080" ReadOnly="True"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">       
                                <label>
                                    Pin Code
                                </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" 
                                            placeholder="Pin Code" BorderColor="#008080" ReadOnly="True"></asp:TextBox>
                                        
                                    </div>
                                </div>
                            </div>


                        </div>



                        <div class="row">
                            <div class="col-md-12">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" 
                                        placeholder="Full Address" BorderColor="#008080" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
                                </div>
                             </div>                            
                        </div>



                        <br>

                        
                        <br>

                        

                        

                        <div class="row">                            
                            <div class="form-group">
                                    <div class="d-grid gap-2">
                                        <asp:Button ID="Button4" runat="server" Text="Delete User Permanently" class="btn btn-danger btn-block btn-lg" OnClick="Button4_Click" />                                    
                                    </div>
                            </div>
                        
                         <br>
                        </div>

                        <br>

                        
                            
                        
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
                                    <h4>Member List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" SortExpression="member_id" ReadOnly="True" />
                                        <asp:BoundField DataField="full_name" HeaderText="Full Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
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