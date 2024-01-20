<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stucomplain.aspx.cs" Inherits="collegeManagment.stucomplain" %>

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
                <div class="col-4 p-3">
                    <div class="form-group ">
                        College Name:
            <asp:TextBox ID="txtcolname" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="form-group ">
                        Student Name:
            <asp:TextBox ID="txtstuname" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="form-group ">
                        Email :
            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="form-group ">
                        Branch :
            <asp:TextBox ID="txtbranch" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="form-group ">
                        Complaint To:
            <asp:DropDownList ID="ddlcomplainto" CssClass="form-control" runat="server">
                <asp:ListItem Value="0">Please Select</asp:ListItem>
                <asp:ListItem Value="1">Account</asp:ListItem>
                <asp:ListItem Value="2">Exame</asp:ListItem>
                <asp:ListItem Value="3">Sport</asp:ListItem>
                <asp:ListItem Value="4">Addmission</asp:ListItem>
            </asp:DropDownList><br />
                    </div>
                    <div class="form-group ">
                        Message:
            <asp:TextBox ID="txtmessage" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </div>
                    <div class="form-group">
                        Date: 
            <asp:TextBox ID="txtdate" CssClass="form-control" runat="server"></asp:TextBox><br />
                    </div>

                    <div class="form-group d-flex justify-content-between">
                        <asp:Button ID="btnsubmit" runat="server" CssClass="form-control btn btn-outline-primary" Text="Submit" OnClick="btnsubmit_Click" />

                        <asp:Button ID="btnshow" runat="server" CssClass="form-control btn btn-outline-info" Text="Show" OnClick="btnshow_Click" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="table-hover table-responsive">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="Srno">
                                <ItemTemplate>
                                    <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>' ToolTip='<%#Eval("id") %>'></asp:Label>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="College">
                                <ItemTemplate>
                                    <asp:Label ID="lblcollege" runat="server" Text='<%#Eval("college") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Student Name ">
                                <ItemTemplate>
                                    <asp:Label ID="lblstuname" runat="server" Text='<%#Eval("studentname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Branch">
                                <ItemTemplate>
                                    <asp:Label ID="lblbranch" runat="server" Text='<%#Eval("branch") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Complaint To ">
                                <ItemTemplate>
                                    <asp:Label ID="lblcompto" runat="server" Text='<%#Eval("complaintto") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Message">
                                <ItemTemplate>
                                    <asp:Label ID="lblmsg" runat="server" Text='<%#Eval("message") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date">
                                <ItemTemplate>
                                    <asp:Label ID="lbldate" runat="server" Text='<%#Eval("date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" CssClass="form-control btn btn-outline-danger" CommandArgument='<%# Eval("id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                </div>
            </div>
        </div>

       

    </form>
</body>
</html>
