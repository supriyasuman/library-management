﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication1.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/generaluser.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Sign Up</h4>
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
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                        placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <%-------------------------------------------------------------------------------------%>

                        <%--Second Row --%>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact no.</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                        placeholder="Contact number" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator"
                                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                        placeholder="Email id" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <%-------------------------------------------------------------------------------------%>

                        <%--Third Row --%>
                        <div class="row">
                            <div class="col-md-4">
                                <label>State </label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1"
                                        runat="server">
                                        <asp:ListItem Text="select" Value="select"></asp:ListItem>
                                        <asp:ListItem Text="Andhra Pradesh" Value="	Andhra Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="	Assam" Value="	Assam"></asp:ListItem>
                                        <asp:ListItem Text="	Bihar" Value="	Bihar"></asp:ListItem>
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh"></asp:ListItem>
                                        <asp:ListItem Text="	Goa" Value="	Goa"></asp:ListItem>
                                        <asp:ListItem Text="Gujarat" Value="Gujarat"></asp:ListItem>
                                        <asp:ListItem Text="	Haryana" Value="	Haryana"></asp:ListItem>
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="	Jharkhand" Value="	Jharkhand"></asp:ListItem>
                                        <asp:ListItem Text="	Karnataka" Value="	Karnataka"></asp:ListItem>
                                        <asp:ListItem Text="Kerala" Value="Kerala"></asp:ListItem>
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="	Maharashtra" Value="	Maharashtra"></asp:ListItem>
                                        <asp:ListItem Text="Manipur" Value="Manipur"></asp:ListItem>
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya"></asp:ListItem>
                                        <asp:ListItem Text="	Mizoram" Value="	Mizoram"></asp:ListItem>
                                        <asp:ListItem Text="Nagaland" Value="Nagaland"></asp:ListItem>
                                        <asp:ListItem Text="	Odisha" Value="	Odisha"></asp:ListItem>
                                        <asp:ListItem Text="Punjab" Value="Punjab"></asp:ListItem>
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
                                        <asp:ListItem Text="	Sikkim" Value="	Sikkim"></asp:ListItem>
                                        <asp:ListItem Text="	Tamil Nadu" Value="		Tamil Nadu"></asp:ListItem>
                                        <asp:ListItem Text="Telangana" Value="Telangana"></asp:ListItem>
                                        <asp:ListItem Text="	Tripura" Value="	Tripura"></asp:ListItem>
                                        <asp:ListItem Text="	Uttar Pradesh" Value="		Uttar Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand"></asp:ListItem>
                                        <asp:ListItem Text="West Bengal" Value="West Bengal"></asp:ListItem>
                                        <asp:ListItem Text="Punjab" Value="Punjab"></asp:ListItem>
                                        <asp:ListItem Text="Andaman and Nicobar Islands" Value="Andaman and Nicobar Islands"></asp:ListItem>
                                        <asp:ListItem Text="Chandigarh" Value="Chandigarh"></asp:ListItem>
                                        <asp:ListItem Text="Dadra and Nagar Haveli and Daman and Diu" Value="Dadra and Nagar Haveli and Daman and Diu"></asp:ListItem>
                                        <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir"></asp:ListItem>
                                        <asp:ListItem Text="Ladakh" Value="Ladakh"></asp:ListItem>
                                        <asp:ListItem Text="Lakshadweep" Value="Lakshadweep"></asp:ListItem>
                                        <asp:ListItem Text="Puducherry" Value="Puducherry"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"
                                        placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"
                                        placeholder="Pin code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>


                        </div>
                        <%-------------------------------------------------------------------------------------%>

                        <%--Fourth Row --%>
                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                        placeholder="Full address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>



                        </div>
                        <%-------------------------------------------------------------------------------------%>
                        <%-- Adding pill --%>
                        <div class="row">

                            <div class="col">
                                <center>
                                    <span class="badge badege-pill badge-info">Login Credentials</span>
                                </center>
                            </div>

                        </div>


                        <%--Fifth Row --%>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User Id</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"
                                        placeholder="User Id"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                        placeholder="password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <%-------------------------------------------------------------------------------------%>


                        <div class="row">
                            <div class="col">



                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server"
                                        Text="Sign Up" OnClick="Button1_Click" />
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
                <a href="HomePage.aspx">Back to Home</a><br />
                <br />
            </div>

        </div>

    </div>


</asp:Content>
