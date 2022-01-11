<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_author_management.aspx.cs" Inherits="Library_Management_System.admin_author_management" %>


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

    <div class="container">

        <div class="row">

            <div class="col-md-5">

                <div class="card">


                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">       
                                <center>
                                    <img src="images/imgs/writer.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-4">       
                                <label>
                                    Author ID
                                </label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" 
                                            placeholder="Author ID" BorderColor="#008080" ></asp:TextBox>
                                        <asp:Button ID="Button3" runat="server" Text="Go" class="btn btn-secondary" OnClick="Button3_Click" /> 
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">       
                                <label>
                                    Author Name
                                </label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" 
                                        placeholder="Author Name" BorderColor="#008080" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <br>

                        <div class="row">
                            <div class="col-md-4">
                                <center>
                                    <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-block btn-lg btn-success" OnClick="Button1_Click" />
                                </center>
                                <br>
                             </div>
                            <br>
                            <div class="col-md-4">
                                <center>
                                    <asp:Button ID="Button2" runat="server" Text="Update" class="btn btn-block btn-lg btn-primary" OnClick="Button2_Click" />
                                </center>
                                <br>
                            </div>
                            <br>
                            <div class="col-md-4">
                                <center>
                                    <asp:Button ID="Button4" runat="server" Text="Delete" class="btn btn-block btn-lg btn-danger" OnClick="Button4_Click" />
                                </center>
                                <br>
                            </div>                            
                        </div>

                    </div>


                </div>

            </div>

            <div class="col-md-7">

                <div class="card">


                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author List</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        
                        <div class="row" id="table">

                            

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
