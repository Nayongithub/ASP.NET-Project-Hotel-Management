<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCustomer.aspx.cs" Inherits="Project.AddCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-8 offset-2" style="background-color: #BBDEFB; border-radius: 25px">
        <br />
        <h2 class="text-center">New Customer</h2>
        <br />
        <div class="col-md-8 offset-2">


            <asp:DetailsView ID="DetailsView1" runat="server" Height="120px" Width="631px" AutoGenerateRows="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserting="DetailsView1_ItemInserting" CssClass="table table-borderless" BorderStyle="None">

                <Fields>
                    
                    <asp:TemplateField HeaderText="Customer ID :" InsertVisible="False" SortExpression="Customer_ID">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Customer_ID") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Customer_ID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name :" HeaderStyle-CssClass="col-form-label font-weight-bold" SortExpression="Customer_Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Customer_Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Width="280px" Height="30px" Text='<%# Bind("Customer_Name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="TextBox3" ForeColor="Red" Font-Bold="false" SetFocusOnError="true" CssClass="d-inline-flex"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Customer_Name") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>

                        <ItemStyle CssClass="col-form-label font-weight-bold" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Number :" HeaderStyle-CssClass="col-form-label font-weight-bold" SortExpression="Phone_Number">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Phone_Number") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Width="280px" Height="30px" Text='<%# Bind("Phone_Number") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Number is required" ControlToValidate="TextBox4" Font-Bold="false" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Numbr Invalid" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{11}" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Phone_Number") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email :" HeaderStyle-CssClass="col-form-label font-weight-bold" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Width="280px" Height="30px" Text='<%# Bind("Email") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBox5" Font-Bold="false" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email format is not correct" ControlToValidate="TextBox5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address :" HeaderStyle-CssClass="col-form-label font-weight-bold" SortExpression="Customer_Address">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Customer_Address") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Width="280px" Height="30px" Text='<%# Bind("Customer_Address") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is required" ControlToValidate="TextBox6" Font-Bold="false" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Customer_Address") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Check In :" HeaderStyle-CssClass="col-form-label font-weight-bold" SortExpression="CheckIn">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CheckIn") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="280px" Height="30px" Text='<%# Bind("CheckIn") %>'></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/Images/Calender.png" AutoPostBack="false" CausesValidation="false" />
                            <asp:Calendar ID="CalendarCheckIn" runat="server" OnSelectionChanged="CalendarCheckIn_SelectionChanged"></asp:Calendar>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Check-in-date is required" ControlToValidate="TextBox2" Font-Bold="false" ForeColor="Red" SetFocusOnError="true" CssClass="position-absolute"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("CheckIn") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Check Out :" HeaderStyle-CssClass="col-form-label font-weight-bold align-middle" SortExpression="CheckOut">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("CheckOut") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Width="280px" Height="30px" Text='<%# Bind("CheckOut") %>'></asp:TextBox>
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Calender.png" OnClick="ImageButton2_Click" AutoPostBack="false" CausesValidation="false" />
                            <asp:Calendar ID="CalendarCheckOut" runat="server" OnSelectionChanged="CalendarCheckOut_SelectionChanged"></asp:Calendar>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Check-out-date is required" ControlToValidate="TextBox7" Font-Bold="false" ForeColor="Red" SetFocusOnError="true" CssClass="position-absolute"></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("CheckOut") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Room :" HeaderStyle-CssClass="col-form-label font-weight-bold" SortExpression="RoomType_ID">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("RoomType_ID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <%--<asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Text='<%# Bind("RoomType_ID") %>'></asp:TextBox>--%>
                            <%--<asp:DropDownList ID="DropDownList1" runat="server" Text='<%# Bind("RoomType_ID") %>' DataSourceID="SqlDataSource1">
                        <asp:ListItem Value="0">--SELECT ONE--</asp:ListItem>
                        <asp:ListItem Value="1">Single</asp:ListItem>
                        <asp:ListItem Value="2">Double</asp:ListItem>
                        <asp:ListItem Value="3">Quad</asp:ListItem>
                        
                    </asp:DropDownList>--%>

                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="RoomType" DataValueField="RoomType_ID" CssClass="form-control" Width="280px" Height="30px" SelectedValue='<%# Bind("RoomType_ID") %>'></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HotelBlueMoonDbConnectionString2 %>" DeleteCommand="DELETE FROM [tblRoomType] WHERE [RoomType_ID] = @RoomType_ID" InsertCommand="INSERT INTO [tblRoomType] ([RoomType]) VALUES (@RoomType)" SelectCommand="SELECT * FROM [tblRoomType]" UpdateCommand="UPDATE [tblRoomType] SET [RoomType] = @RoomType WHERE [RoomType_ID] = @RoomType_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="RoomType_ID" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="RoomType" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="RoomType" Type="String" />
                                    <asp:Parameter Name="RoomType_ID" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelBlueMoonDbConnectionString %>" SelectCommand="SELECT * FROM [tblRoomType]"></asp:SqlDataSource>
                            <br />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("RoomType_ID") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>
                        
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Amount :" HeaderStyle-CssClass="col-form-label font-weight-bold" SortExpression="Amount">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Amount") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Text='<%# Bind("Amount") %>' Width="280px" Height="30px" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Amount is required" ControlToValidate="TextBox9" Font-Bold="false" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Price must be in between 1000 and 7000" ControlToValidate="TextBox9" ForeColor="Red" MaximumValue="7000" MinimumValue="1000" Type="Integer"></asp:RangeValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("Amount") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Picture :" HeaderStyle-CssClass="col-form-label font-weight-bold" SortExpression="Picture">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Picture") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Picture") %>'></asp:TextBox>--%>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Bind("Picture") %>' />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Picture") %>'></asp:Label>
                        </ItemTemplate>

                        <HeaderStyle CssClass="col-form-label font-weight-bold"></HeaderStyle>
                    </asp:TemplateField>

                    <asp:TemplateField ShowHeader="False">
                        <InsertItemTemplate>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-secondary"></asp:LinkButton>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:PostBackTrigger ControlID="LinkButton1" />
                                </Triggers>
                            </asp:UpdatePanel>
                            
                            <br />
                            <br />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="New" Text="New"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
        </div>
    </div>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelBlueMoonDbConnectionString2 %>" DeleteCommand="DELETE FROM [tblCustomer] WHERE [Customer_ID] = @Customer_ID" InsertCommand="INSERT INTO [tblCustomer] ([Customer_Name], [Phone_Number], [Email], [Customer_Address], [CheckIn], [CheckOut], [RoomType_ID], [Amount], [Picture]) VALUES (@Customer_Name, @Phone_Number, @Email, @Customer_Address, @CheckIn, @CheckOut, @RoomType_ID, @Amount, @Picture)" SelectCommand="SELECT * FROM [tblCustomer]" UpdateCommand="UPDATE [tblCustomer] SET [Customer_Name] = @Customer_Name, [Phone_Number] = @Phone_Number, [Email] = @Email, [Customer_Address] = @Customer_Address, [CheckIn] = @CheckIn, [CheckOut] = @CheckOut, [RoomType_ID] = @RoomType_ID, [Amount] = @Amount, [Picture] = @Picture WHERE [Customer_ID] = @Customer_ID">
        <DeleteParameters>
            <asp:Parameter Name="Customer_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Customer_Name" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Customer_Address" Type="String" />
            <asp:Parameter DbType="Date" Name="CheckIn" />
            <asp:Parameter DbType="Date" Name="CheckOut" />
            <asp:Parameter Name="RoomType_ID" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="Picture" DbType="Binary" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Customer_Name" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Customer_Address" Type="String" />
            <asp:Parameter DbType="Date" Name="CheckIn" />
            <asp:Parameter DbType="Date" Name="CheckOut" />
            <asp:Parameter Name="RoomType_ID" Type="Int32" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="Picture" Type="Object" />
            <asp:Parameter Name="Customer_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
