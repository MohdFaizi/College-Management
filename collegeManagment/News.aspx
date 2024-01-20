<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeAdmin.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="collegeManagment.News" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div class="p-3">
        <div class="col-12">
            <div class="row">
                <div class="card-body">
                    <div class="col-12 form-group">
                        College Code:
        <asp:Label ID="lblcolcode" runat="server" Text="Label"></asp:Label><br />
                    </div>

                    <div class="col-12 form-group">
                        College Name:
        <asp:Label ID="lblcollegename" runat="server" Text="Label"></asp:Label><br />
                    </div>
                    <div class="col-12 form-group">
                        New Title:
        <asp:TextBox ID="txttitle" runat="server" CssClass="form-control"></asp:TextBox><br />
                    </div>

                    <div class="col-12 form-group">
                        Message:
        <asp:TextBox ID="txtmessage" runat="server" CssClass="form-control"></asp:TextBox><br />
                    </div>
                    <div class="col-12 form-group">
                        Date:
        <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox><br />
                    </div>

                    <div class=" col-12 form-group">

                        <asp:Button ID="btnsubmit" CssClass="form-control" runat="server" Text="Submit" OnClick="btnsubmit_Click1" /><br />

                        <asp:Button ID="btnshow" CssClass="form-control" runat="server" Text="Show" OnClick="btnshow_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Srno">
                        <ItemTemplate>
                            <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="College Code">
                        <ItemTemplate>
                            <asp:TextBox ID="txtcolcod" runat="server" Text='<%#Eval("collegecode") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="College Name ">
                        <ItemTemplate>
                            <asp:TextBox ID="txtcolname" runat="server" Text='<%#Eval("collegename") %>'></asp:TextBox>

                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Tital">
                        <ItemTemplate>
                            <asp:TextBox ID="txttital" runat="server" Text='<%#Eval("newstitle") %>'></asp:TextBox>

                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Message  ">
                        <ItemTemplate>
                            <asp:TextBox ID="txtmessage" runat="server" Text='<%#Eval("message") %>'></asp:TextBox>

                        </ItemTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnedite" runat="server" Text="Edite" CommandArgument='<%#Eval("newsid") %>' OnClick="btnedite_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="delete" CommandArgument='<%#Eval("newsid") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </div>--%>

    <div class="container p-3">
    <div class="col-12">
        <div class="row">
            <div class="card-body">
                <div class="col-12 form-group">
                    College Code:
                    <asp:Label ID="lblcolcode" runat="server" Text="Label"></asp:Label><br />
                </div>

                <div class="col-12 form-group">
                    College Name:
                    <asp:Label ID="lblcollegename" runat="server" Text="Label"></asp:Label><br />
                </div>
                <div class="col-12 form-group">
                    New Title:
                    <asp:TextBox ID="txttitle" runat="server" CssClass="form-control"></asp:TextBox><br />
                </div>

                <div class="col-12 form-group">
                    Message:
                    <asp:TextBox ID="txtmessage" runat="server" CssClass="form-control"></asp:TextBox><br />
                </div>
                <div class="col-12 form-group">
                    Date:
                    <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox><br />
                </div>

                <div class="col-12 form-group">
                    <asp:Button ID="btnsubmit" CssClass="btn btn-primary btn-block" runat="server" Text="Submit" OnClick="btnsubmit_Click1" /><br />
                    <asp:Button ID="btnshow" CssClass="btn btn-secondary btn-block" runat="server" Text="Show" OnClick="btnshow_Click" />
                </div>
            </div>
        </div>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table mt-3">
            <Columns>
                <asp:TemplateField HeaderText="Srno">
                    <ItemTemplate>
                        <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="College Code">
                    <ItemTemplate>
                        <asp:TextBox ID="txtcolcod" runat="server" Text='<%#Eval("collegecode") %>' CssClass="form-control" ReadOnly="True"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="College Name">
                    <ItemTemplate>
                        <asp:TextBox ID="txtcolname" runat="server" Text='<%#Eval("collegename") %>' CssClass="form-control" ReadOnly="True"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:TextBox ID="txttital" runat="server" Text='<%#Eval("newstitle") %>' CssClass="form-control" ReadOnly="True"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Message">
                    <ItemTemplate>
                        <asp:TextBox ID="txtmessage" runat="server" Text='<%#Eval("message") %>' CssClass="form-control" ReadOnly="True"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnedite" runat="server" Text="Edit" CommandArgument='<%#Eval("newsid") %>' OnClick="btnedite_Click" CssClass="btn btn-warning btn-sm" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" CommandArgument='<%#Eval("newsid") %>' CssClass="btn btn-danger btn-sm" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>

</asp:Content>
