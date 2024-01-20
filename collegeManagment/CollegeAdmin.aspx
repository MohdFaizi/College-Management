<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeAdmin.Master" AutoEventWireup="true" CodeBehind="CollegeAdmin.aspx.cs" Inherits="collegeManagment.CollegeAdmin1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--<div class="col-12">
        <div class="row p-2 ">
            <div class="col">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dept.aspx">Create Department</asp:HyperLink>
            </div>
            <div class="col">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/deptuseser.aspx">Create Department User</asp:HyperLink>
            </div>
            <div class="col">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Report.aspx">Report</asp:HyperLink>
            </div>
            <div class="col">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/News.aspx">News</asp:HyperLink>
            </div>
            <div class="col">
                College Name:<asp:Label ID="lblcollname" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </div>--%>

    <div class="container">
    <div class="row p-2">
        <div class="col-md-2">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Dept.aspx" CssClass="btn btn-primary btn-block">Create Department</asp:HyperLink>
        </div>
        <div class="col-md-2">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/deptuseser.aspx" CssClass="btn btn-primary btn-block">Create Department User</asp:HyperLink>
        </div>
        <div class="col-md-2">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Report.aspx" CssClass="btn btn-primary btn-block">Report</asp:HyperLink>
        </div>
        <div class="col-md-2">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/News.aspx" CssClass="btn btn-primary btn-block">News</asp:HyperLink>
        </div>
        <div class="col-md-4">
            <div class="d-flex align-items-center">
                <span class="mr-2">College Name:</span>
                <asp:Label ID="lblcollname" runat="server" Text="Label" CssClass="font-weight-bold"></asp:Label>
            </div>
        </div>
    </div>
</div>
</asp:Content>

