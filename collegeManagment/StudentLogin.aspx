<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="collegeManagment.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Classes/CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="Classes/JS/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
                <div class="card-body">
                    <div class="form-group">
                        Enter Student Email  -<asp:TextBox ID="txtcollegeid" runat="server" CssClass="form-control"></asp:TextBox><br />

                        Enter Password -<asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"></asp:TextBox><br />
                    </div>
                    <div class="form-group d-flex justify-content-between">
                        <div>
                            <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="form-control btn btn-outline-info" OnClick="btnlogin_Click" />
                        </div>
                        <div>
                            <asp:Button ID="btnaccount" runat="server" Text="New Account" CssClass="form-control btn-outline-primary" OnClick="btnaccount_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4"></div>
        </div>
    </form>
</body>
</html>
