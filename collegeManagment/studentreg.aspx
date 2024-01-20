<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentreg.aspx.cs" Inherits="collegeManagment.studentreg" %>

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
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%--<div>
            select college: <asp:DropDownList ID="ddlcollege" AppendDataBoundItems="true" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlcollege_SelectedIndexChanged">
            <asp:ListItem Value="0">Please Select</asp:ListItem>
            </asp:DropDownList><br />
              Enter student Name: <asp:TextBox ID="txtstuname" runat="server"></asp:TextBox><br /><br />

            select branch: <asp:DropDownList ID="ddlbranch" runat="server" AppendDataBoundItems="true">
                <asp:ListItem Value="0">Please Select</asp:ListItem>
            </asp:DropDownList><br />

            Enter Email : <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br /><br />

            Enter mobile : <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox><br /><br />

            Enter semester: <asp:TextBox ID="txtsemester" runat="server"></asp:TextBox><br /><br />

            Enter  password: <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox><br /><br />

             date: <asp:TextBox ID="txtdate" runat="server"></asp:TextBox><br /><br />

        </div>--%>

         <div class="form-group">
            <label for="ddlcollege">Select College:</label>
            <asp:DropDownList ID="ddlcollege" AppendDataBoundItems="true" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlcollege_SelectedIndexChanged" CssClass="form-control">
                <asp:ListItem Value="0">Please Select</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label for="txtstuname">Enter Student Name:</label>
            <asp:TextBox ID="txtstuname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="ddlbranch">Select Branch:</label>
            <asp:DropDownList ID="ddlbranch" runat="server" AppendDataBoundItems="true" CssClass="form-control">
                <asp:ListItem Value="0">Please Select</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <label for="txtemail">Enter Email:</label>
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtmobile">Enter Mobile:</label>
            <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtsemester">Enter Semester:</label>
            <asp:TextBox ID="txtsemester" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtpassword">Enter Password:</label>
            <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="form-group">
            <label for="txtdate">Date:</label>
            <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <asp:Button ID="btnsubmit" runat="server" Text="Submit" type="button" class="btn btn-primary" OnClick="btnsubmit_Click" /><br />

        <asp:Button ID="btnlogin" runat="server" Text="login" type="button"  class="btn btn-secondary" PostBackUrl="~/StudentLogin.aspx" />
    </form>

    
   
</body>
</html>
