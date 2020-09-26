<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Time.ascx.cs" Inherits="Project.Time" %>
<asp:Label ID="Label2" runat="server" Text="Time :"></asp:Label>
<asp:Label ID="Label1" runat="server" Text=""></asp:Label><asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
