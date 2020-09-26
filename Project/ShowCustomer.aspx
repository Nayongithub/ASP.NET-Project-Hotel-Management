<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowCustomer.aspx.cs" Inherits="Project.ShowCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class=" bg-light">
        <h2 class="text-center">Customer Info</h2>
    <div class=" justify-content-end mb-1">
        <a runat="server" class="btn btn-outline-primary btn-sm" href="AddCustomer.aspx"><i class="fa fa-plus"></i>Add New</a>
    </div>
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" Width="1268px">
        <Columns>
            <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
            <asp:BoundField DataField="Customer_Name" HeaderText="Customer_Name" SortExpression="Customer_Name" />
            <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Customer_Address" HeaderText="Customer_Address" SortExpression="Customer_Address" />
            <%--<asp:BoundField DataField="CheckIn" HeaderText="CheckIn" SortExpression="CheckIn" />
            <asp:BoundField DataField="CheckOut" HeaderText="CheckOut" SortExpression="CheckOut" />
            <asp:BoundField DataField="RoomType_ID" HeaderText="RoomType_ID" SortExpression="RoomType_ID" />--%>
            <asp:TemplateField HeaderText="Amount" SortExpression="Amount">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Amount" , "{0:0.00}") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Amount", "{0:0.00}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Picture" SortExpression="Picture">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <%--<asp:Label ID="Label1" runat="server" Text='<%# Bind("Picture") %>'></asp:Label>--%>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#"data:image/png;base64,"+ Convert.ToBase64String((byte[])Eval("Picture")) %>' Width="50px" Height="50px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="true" HeaderText="Action">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ToolTip="Save" CssClass="btn btn-primary btn-sm"><i class="fa fa-save"></i></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ToolTip="Delete" CssClass="btn btn-danger btn-sm"><i class="fa fa-remove"></i></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" ToolTip="Edit" CssClass="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" ToolTip="Delete" CssClass="btn btn-danger btn-sm"><i class="fa fa-trash"></i></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
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
            <asp:Parameter Name="Picture" DbType="Binary" />
            <asp:Parameter Name="Customer_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
