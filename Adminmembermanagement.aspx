<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminmembermanagement.aspx.cs" Inherits="WebApplication1.Adminmembermanagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
       }
       );

   </script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
                        <%--Member photo --%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/generaluser.jpg" />
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

                            <div class="col-md-3">
                                <label>Member Id</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                            placeholder="Id">
                                        </asp:TextBox>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="LinkButton4"  runat="server" OnClick="LinkButton4_Click">
                                            <i class="fas fa-check-circle"></i></asp:LinkButton>


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="Full name" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server"
                                            placeholder="Id" ReadOnly="True"> </asp:TextBox>

                                        <asp:LinkButton CssClass="btn btn-success mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                                            <i class="fas fa-check-circle"></i></asp:LinkButton>

                                        <asp:LinkButton CssClass="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
                                            <i class="far fa-pause-circle"></i></asp:LinkButton>

                                        <asp:LinkButton CssClass="btn btn-danger mr-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
                                            <i class="fas fa-times-circle"></i></asp:LinkButton>
                                        

                                    </div>
                                </div>
                            </div>


                        </div>

                        <%-------------------------------------------------------------------------------------%>

                        <%--Second Row --%>
                        <div class="row">

                            
                            <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"
                                        placeholder="date of birth" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Contact No.</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                        placeholder="contact no" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Email Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                        placeholder="Email id" ReadOnly="True">
                                    </asp:TextBox>

                                </div>
                            </div>


                        </div>
                        <%-------------------------------------------------------------------------------------%>

                        <%--Third Row --%>
                        <div class="row">

                            
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                        placeholder="state" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
                                        placeholder="city" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"
                                        placeholder="Pincode" ReadOnly="True">
                                    </asp:TextBox>

                                </div>
                            </div>


                        </div>
                        <%-------------------------------------------------------------------------------------%>


                        <%--Fourth Row --%>
                        <div class="row">

                            <div class="col-12">
                                <label>Full postal Address</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                       placeholder="full adress" TextMode="MultiLine" Rows="3" ReadOnly="True"></asp:TextBox>      
                                  
                                </div>
                            </div>

</div>
                        <%-------------------------------------------------------------------------------------%>




                        <div class="row">
                           


                            <div class="col-8-mx-auto">

                                <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button4"
                                    runat="server" Text="Delete User Permanently" OnClick="Button4_Click" />
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
                                    <h4>Member List</h4>


                                </center>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT [member_id], [account_status], [full_name], [contact_no], [email] FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView CssClass="table table-bordered table-striped" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                        </div>

 </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
