<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="Project.Email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table >
            <tr><th>Message</th></tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="To :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Subject :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lnlMessage" runat="server" Text="Message :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Columns="22" Rows="6"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
