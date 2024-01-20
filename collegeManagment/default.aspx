<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="collegeManagment._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Classes/CSS/bootstrap.min.css" rel="stylesheet" />
    <script src="Classes/JS/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-12">

            <div class="row">
                <div class="col-12" style="height: 35px">
                    <header>
                        <div class="fixed-top d-flex justify-content-center">
                            <h3>
                                <asp:Label runat="server" ID="lblhead">Welcome to the Default Page</asp:Label></h3>
                        </div>
                    </header>
                </div>
                <div class="col-6">
                    <div class="d-flex justify-content-center p-2">
                        <asp:Image ID="imgcollegee" runat="server" ImageUrl="~/Classes/college.jpg" />
                    </div>
                    <div class="d-flex justify-content-center">
                        <asp:Button ID="Button1" CssClass="form-control btn btn-outline-info" Width="250px" runat="server" Text="College" PostBackUrl="~/CollegeLogin.aspx" />
                    </div>
                </div>
                <div class="col-6">
                    <div class="card-img d-flex justify-content-center p-2">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Classes/college.jpg" />
                    </div>
                    <div class="d-flex justify-content-center">
                        <asp:Button ID="Button2" runat="server" CssClass="form-control btn btn-outline-info" Width="250px" Text="Student" PostBackUrl="~/StudentLogin.aspx" />
                    </div>
                </div>
            </div>
        </div>
        <footer>
            <div class="fixed-bottom d-flex justify-content-center">
                Develop By : Mr Mohammad Faiz
            </div>
        </footer>
    </form>

</body>
</html>
