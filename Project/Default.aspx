<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project._Default" %>

<%--<%@ Register Src="~/MyCalender.ascx" TagPrefix="uc1" TagName="MyCalender" %>--%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        <div class="jumbotron">
            <h1>Hotel Blue Moon</h1>
            <p class="lead">Hotel Management</p>
            <p>Exam 07 project on Hotel management</p>
        </div>

        <div class="row">
            <div class="col-md-4">
                <h2>REQUIREMENTS</h2>
                <p>
                    Hotel management system consists of both backgroundand foreground parts, front office is responsible forbooking, reception and cashier services, the backgroundused for administrators to manage systems, such assetting room type, room settings, operator settings,financial management and warehouse management.Cash register function requirements. 
                </p>

            </div>
            <div class="col-md-4">
                <h2>PROJECTS INFO</h2>
                <p>
                    This software is a system that simplifies a hotel's operations by automating them. It covers minor to major aspects of hotel management viz. reservations, front-office, back-office, housekeeping, maintenance, guest management and even billing.
                </p>

            </div>
            <div class="col-md-4">
                <h2>INSTRUCTIONS</h2>
                <p>
                   ASP.NET is divided into several distinct parts. Most notably it consists of a database serverand a user client application. The reason for having this design is that a common usage of ASP.NET is a multi-station setup where we have several systems running the application. 
                </p>
            </div>
        </div>

    </div>

</asp:Content>
