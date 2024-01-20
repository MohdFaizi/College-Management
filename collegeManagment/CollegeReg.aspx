<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CollegeReg.aspx.cs" Inherits="collegeManagment.CollegeReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Classes/CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="Classes/JS/bootstrap.min.js"></script>
    <style>
        body {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        #btnsubmit,
        #btnlogin {
            width: 100%;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- <div>
            Enter College Name:
            <asp:TextBox ID="txtcolname" runat="server"></asp:TextBox><br />

            Enter College Code:
            <asp:TextBox ID="txtcolcod" runat="server"></asp:TextBox><br />

            Enter Principal Name:
            <asp:TextBox ID="txtprincipalname" runat="server"></asp:TextBox><br />

            Enter Email:
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />

            Enter Mobile Number:
            <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox><br />

            Enter Password:
            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox><br />

            Date:
            <asp:TextBox ID="txtdate" runat="server" ReadOnly="True"></asp:TextBox><br />
        </div>
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnlogin" runat="server" Text="Login" PostBackUrl="~/CollegeLogin.aspx" />--%>

        <div class="form-group">
            <label for="txtcolname">Enter College Name:</label>
            <asp:TextBox ID="txtcolname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtcolcod">Enter College Code:</label>
            <asp:TextBox ID="txtcolcod" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtprincipalname">Enter Principal Name:</label>
            <asp:TextBox ID="txtprincipalname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtemail">Enter Email:</label>
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtmobile">Enter Mobile Number:</label>
            <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtpassword">Enter Password:</label>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtdate">Date:</label>
            <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
        </div>


        <asp:Button ID="Button1" runat="server" Text="Submit" type="button" class="btn btn-primary" OnClick="btnsubmit_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Login" type="button" class="btn btn-secondary" PostBackUrl="~/CollegeLogin.aspx" />

    </form>

</body>
</html>
