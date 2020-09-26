<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Project.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h2 class="text-center">Payment Info</h2>
    <div style="margin-left:175px">
   
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Payment_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" >
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger"/>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-secondary"/>
                </td>
                <td>
                    <asp:Label ID="Payment_IDLabel" runat="server" Text='<%# Eval("Payment_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Customer_NameLabel" runat="server" Text='<%# Eval("Customer_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Payment_DateLabel" runat="server" Text='<%# Eval("Payment_Date") %>' />
                </td>
                <td>
                    <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" CssClass="btn btn-info"/>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-dark"/>
                </td>
                <td>
                    <asp:Label ID="Payment_IDLabel1" runat="server" Text='<%# Eval("Payment_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Customer_NameTextBox" runat="server" Text='<%# Bind("Customer_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Payment_DateTextBox" runat="server" Text='<%# Bind("Payment_Date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" CssClass="btn btn-primary"/>
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" CssClass="btn btn-dark"/>
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="Customer_NameTextBox" runat="server" Text='<%# Bind("Customer_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Payment_DateTextBox" runat="server" Text='<%# Bind("Payment_Date") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger"/>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-secondary"/>
                </td>
                <td>
                    <asp:Label ID="Payment_IDLabel" runat="server" Text='<%# Eval("Payment_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Customer_NameLabel" runat="server" Text='<%# Eval("Customer_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Payment_DateLabel" runat="server" Text='<%# Eval("Payment_Date") %>' />
                </td>
                <td>
                    <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style=""  class="table table-bordered table-striped">
                            <tr runat="server" style="" class="bg-info">
                                <th runat="server"></th>
                                <th runat="server">Payment_ID</th>
                                <th runat="server">Customer_Name</th>
                                <th runat="server">Payment_Date</th>
                                <th runat="server">Amount</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server" class="text-center">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="btn btn-link"/>
                                <asp:NumericPagerField/>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="btn btn-link"/>
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="Payment_IDLabel" runat="server" Text='<%# Eval("Payment_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="Customer_NameLabel" runat="server" Text='<%# Eval("Customer_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="Payment_DateLabel" runat="server" Text='<%# Eval("Payment_Date") %>' />
                </td>
                <td>
                    <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HotelBlueMoonDbConnectionString2 %>" DeleteCommand="DELETE FROM [tblPayment] WHERE [Payment_ID] = @Payment_ID" InsertCommand="INSERT INTO [tblPayment] ([Customer_Name], [Payment_Date], [Amount]) VALUES (@Customer_Name, @Payment_Date, @Amount)" SelectCommand="SELECT * FROM [tblPayment]" UpdateCommand="UPDATE [tblPayment] SET [Customer_Name] = @Customer_Name, [Payment_Date] = @Payment_Date, [Amount] = @Amount WHERE [Payment_ID] = @Payment_ID">
        <DeleteParameters>
            <asp:Parameter Name="Payment_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Customer_Name" Type="String" />
            <asp:Parameter DbType="Date" Name="Payment_Date" />
            <asp:Parameter Name="Amount" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Customer_Name" Type="String" />
            <asp:Parameter DbType="Date" Name="Payment_Date" />
            <asp:Parameter Name="Amount" Type="Decimal" />
            <asp:Parameter Name="Payment_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
