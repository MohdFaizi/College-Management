<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CollegeLogin.aspx.cs" Inherits="collegeManagment.CollegeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Classes/CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="Classes/JS/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-4"></div>
            <div class="col-4">
                <div class="card-body">
                    <div class="form-group">
                        Enter College Id/Code -<asp:TextBox ID="txtcollegeid" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your College Id" ShowMessageBox="true"  ShowSummary="false" ValidationGroup="login" ControlToValidate="txtcollegeid"></asp:RequiredFieldValidator>
                        <br />
                        Enter Password -<asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your password" ShowMessageBox="true" ShowSummary="false" ValidationGroup="login" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group d-flex justify-content-between">
                        <div>
                            <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="form-control btn-outline-primary" OnClick="btnlogin_Click" ValidationGroup="login" />
                            <asp:ValidationSummary runat="server" ID="summary1" ValidationGroup="login" DisplayMode="BulletList"  ShowMessageBox="true" ShowSummary="false" />
                        </div>
                        <div>
                            <asp:Button ID="btnreg" runat="server" Text="New Account" CssClass="form-control btn-outline-primary" OnClick="Button2_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-4"></div>
        </div>
    </form>
</body>
</html>
