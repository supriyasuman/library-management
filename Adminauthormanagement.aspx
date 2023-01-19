﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminauthormanagement.aspx.cs" Inherits="WebApplication1.Adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        }
        );

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
                         <%--Writer photo --%>
                         <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/writer.jpg" />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%--First Row --%>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Author Id</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                        placeholder="Id"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary " ID="Button1" runat="server"
                                            Text="Go" OnClick="Button1_Click" />
                                         </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                      placeholder="name"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <%-------------------------------------------------------------------------------------%>

                        



                        <div class="row">
                            <div class="col-4">

                                <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>

                             <div class="col-4">

                                 <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>

                             <div class="col-4">

                                 <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>

                    </div>
                </div>


                <a href="HomePage.aspx">Back to Home</a><br />
                <br />
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
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server"
                                    DataSourceID="SqlDataSource1"></asp:GridView>     
                            </div>
                        </div>
                    
                     
                    </div>
                </div>
            </div>
        </div>

    </div>


</asp:Content>
