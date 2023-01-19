<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" 
    CodeBehind="AdminBookInventory.aspx.cs" Inherits="WebApplication1.AdminBookInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });



        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
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
                                    <h4>Book Details</h4>

                                </center>
                            </div>
                        </div>
                        <%--Book photo --%>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" height="150px" width="100px" src="book_inventory/booklogo.png" />

                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <%------------------------------------First Row--------------------------------------------%>

                        <div class="row">

                            <div class="col-md-4">
                                <label>Book Id</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                            placeholder=" Book Id">
                                        </asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />    


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="Book name">
                                    </asp:TextBox>
                                </div>
                            </div>



                        </div>


                        <%-------------------------------------Second Row---------------------------------%>
                        <div class="row">

                            <%--First Column --%>
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                        <asp:ListItem Text="German" Value="German"></asp:ListItem>
                                        <asp:ListItem Text="Urdu" Value="Urdu"></asp:ListItem>
                                    </asp:DropDownList>

                                </div>


                                <label>Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="publisher 1" Value="publisher 1"></asp:ListItem>
                                        <asp:ListItem Text="publisher 2" Value="publisher 2"></asp:ListItem>
                                    </asp:DropDownList>

                                </div>

                            </div>
                            <%--Second Column --%>
                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="a1" Value="a1"></asp:ListItem>
                                        <asp:ListItem Text="a2" Value="a2"></asp:ListItem>

                                    </asp:DropDownList>

                                </div>


                                <label>Publish Date</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                        placeholder="Date" TextMode="Date">
                                    </asp:TextBox>
                                </div>

                            </div>
                            <%--Third column--%>
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="form-group">

                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                                        <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                        <asp:ListItem Text="Comic Book" Value="Comic Book"></asp:ListItem>
                                        <asp:ListItem Text="Self Help" Value="Self Help"></asp:ListItem>
                                        <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living"></asp:ListItem>
                                        <asp:ListItem Text="Wellness" Value="Wellness"></asp:ListItem>
                                        <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
                                        <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>
                                        <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                                        <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                        <asp:ListItem Text="Poetry" Value="Poetry"></asp:ListItem>
                                        <asp:ListItem Text="Personal Development" Value="Personal Development"></asp:ListItem>
                                        <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction"></asp:ListItem>
                                        <asp:ListItem Text="Suspense" Value="Suspense"></asp:ListItem>
                                        <asp:ListItem Text="Thriller" Value="Thriller"></asp:ListItem>
                                        <asp:ListItem Text="Art" Value="Art"></asp:ListItem>
                                        <asp:ListItem Text="Autobiography" Value="Autobiography"></asp:ListItem>
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia"></asp:ListItem>
                                        <asp:ListItem Text="History" Value="History"></asp:ListItem>
                                        <asp:ListItem Text="Math" Value="Math"></asp:ListItem>
                                        <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                                        <asp:ListItem Text="Travel" Value="Travel"></asp:ListItem>
                                    </asp:ListBox>
                                </div>
                            </div>


                        </div>



                        <%------------------------End Second Row-------------------------%>

                        <%-------------------------------------Third Row---------------------------------%>

                        <div class="row">


                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                        placeholder="state">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Book Cost(per unit)</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
                                        placeholder="city" TextMode="Number" OnTextChanged="TextBox10_TextChanged">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"
                                        placeholder="Pages" TextMode="Number">
                                    </asp:TextBox>

                                </div>
                            </div>


                        </div>

                        <%------------------------End Third Row-------------------------%>
                        <%-------------------------------------Fourth Row---------------------------------%>
                        <div class="row">


                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                        placeholder="Actual stock" TextMode="Number">>
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"
                                        TextMode="Number" ReadOnly="True">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"
                                        TextMode="Number" ReadOnly="True" OnTextChanged="TextBox7_TextChanged">
                                    </asp:TextBox>

                                </div>
                            </div>


                        </div>
                        <%------------------------End Fourth Row-------------------------%>

                        <%--------------------------------------Fifth Row---------------------------------------------------------%>
                        <div class="row">

                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">

                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                        placeholder="Description" TextMode="MultiLine" Rows="3"></asp:TextBox>

                                </div>
                            </div>

                        </div>
                        <%-------------------------------------End Fifth Row------------------------------------------------%>




                        <div class="row">
                            <div class="col-4">

                                <asp:Button class="btn btn-lg btn-block btn-success" ID="Button4"
                                    runat="server" Text="Add" OnClick="Button4_Click" />
                            </div>
                            <div class="col-4">

                                <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button1"
                                    runat="server" Text="Update" OnClick="Button1_Click" />
                            </div>
                            <div class="col-4">

                                <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button2"
                                    runat="server" Text="Delete" OnClick="Button2_Click" />
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
                                    <h4>Book Inventory List</h4>


                                </center>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col">

                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                               
                                ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>"
                                SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView Class="table table-striped table-bordered" ID="GridView1" DataKeyNames="book_id"
                                    runat="server"
                                    AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                   
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True"
                                            SortExpression="book_id" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top">
                                            <ControlStyle Font-Bold="True" />
                                            <ItemStyle Font-Bold="True" />

                                        </asp:BoundField>
                                        <asp:TemplateField>

                                            <ItemTemplate>

                                                <div class="container-fluid">
                                                    <div class="col">
                                <hr />
                            </div>
                        </div>

                                                      <div class="row">
                            
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server"
                                                                        Font-Bold="True" Font-Size="X-Large" Text='<%#Eval("book_name") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <span>Author - </span>
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| <span><span>&nbsp;</span>Genre - </span>
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| 
                                                   <span>Language -<span>&nbsp;</span>
                                                       <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                   </span>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                     <span>Publisher - </span>
                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish Date -
                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                   <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                   <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Cost -
                                                   <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                   <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available Stock -
                                                   <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                                </div>
                                                            </div>
                                                           
                                                           
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Description -
                                                   <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                </div>
                                                            </div>

                                                            
                                                        </div>
                                                        <div class="col-lg-2">
                                                                <asp:Image ID="Image1" CssClass="img-fluid p-2" runat="server" ImageUrl='<%#Eval("book_img_link") %>' />
                                                            </div>
                                                    </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
