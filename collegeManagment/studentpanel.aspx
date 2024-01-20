<%@ Page Title="" Language="C#" MasterPageFile="~/studentpanel.Master" AutoEventWireup="true" CodeBehind="studentpanel.aspx.cs" Inherits="collegeManagment.studentpanel1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="col-12">
        <div class="row p-2">
            <div class="col-3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/stucomplain.aspx">Complaint Form</asp:HyperLink>
            </div>
            <div class="col-3">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/complaintstatus.aspx">Complaint Status </asp:HyperLink>
            </div>
            <div class="col-2">
                student email:<asp:Label ID="lblemail" runat="server" Text="Label"></asp:Label>
            </div>
        </div>
    </div>--%>

    <div class="container">
    <div class="col-12">
        <div class="row p-2">
            <div class="col-3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/stucomplain.aspx" CssClass="btn btn-primary btn-block">Complaint Form</asp:HyperLink>
            </div>
            <div class="col-3">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/complaintstatus.aspx" CssClass="btn btn-secondary btn-block">Complaint Status</asp:HyperLink>
            </div>
            <div class="col-2">
                <div class="form-group">
                    <label for="lblemail">Student Email:</label>
                    <asp:Label ID="lblemail" runat="server" Text="Label" CssClass="form-control" ReadOnly="true"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>
