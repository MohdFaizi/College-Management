<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeAdmin.Master" AutoEventWireup="true" CodeBehind="deptuseser.aspx.cs" Inherits="collegeManagment.deptuseser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<div>
        College Name:
        <asp:TextBox ID="txtcolname" runat="server" Enabled="False"></asp:TextBox><br />

        College Code:
        <asp:TextBox ID="txtcollegecode" runat="server" Enabled="False"></asp:TextBox><br />

        Department Name:
        <asp:DropDownList ID="ddldepname" runat="server"></asp:DropDownList><br />

        User Name/Faculty Name:
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox><br />

        User Id:
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox><br />

        Password:
        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox><br />

        Date:
        <asp:TextBox ID="txtdate" runat="server"></asp:TextBox><br />


        <div class=" col-12">
            <div class="col-6">
            </div>
            <div class="row">
                <div class="row col-3">
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                </div>
                <div class=" col-3">
                    <asp:Button ID="btnshow" runat="server" Text="Show" OnClick="btnshow_Click" />
                </div>
            </div>
        </div>

        <div runat="server" id="fiddiv" visible="false">
            Select Department Name:
            <asp:DropDownList ID="ddlselectdep" runat="server"></asp:DropDownList>
            <asp:Button ID="btnfind" runat="server" Text="FIND" OnClick="btnfind_Click" />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:TemplateField HeaderText="Srno">
                        <ItemTemplate>
                            <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>' ToolTip='<%#Eval("user_id") %>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="College Name">
                        <ItemTemplate>
                            <asp:TextBox ID="txtcolname" runat="server" Text='<%#Eval("collegename") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Deapartment ">
                        <ItemTemplate>
                            <asp:Label ID="lbldepname" runat="server" Text='<%#Eval("deptname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Faculty Name ">
                        <ItemTemplate>
                            <asp:TextBox ID="txtfacultyname" runat="server" Text='<%#Eval("username") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="User Id ">
                        <ItemTemplate>
                            <asp:TextBox ID="txtuserid" runat="server" Text='<%#Eval("userid") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Password  ">
                        <ItemTemplate>
                            <asp:TextBox ID="txtpassword" runat="server" Text='<%#Eval("password") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Edit  ">
                        <ItemTemplate>
                            <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" CommandArgument='<%#Eval("user_id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" CommandArgument='<%#Eval("user_id") %>' ToolTip='<%# Container.DataItemIndex + 1 %>' />
                        </ItemTemplate>
                    </asp:TemplateField>



                </Columns>

            </asp:GridView>

        </div>

    </div>--%>

    <div class="container mt-3">
    <div>
        <div class="form-group">
            College Name: <asp:TextBox ID="txtcolname" runat="server" Enabled="False" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            College Code: <asp:TextBox ID="txtcollegecode" runat="server" Enabled="False" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            Department Name: <asp:DropDownList ID="ddldepname" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <div class="form-group">
            User Name/Faculty Name: <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            User Id: <asp:TextBox ID="txtid" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            Password: <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            Date: <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="row">
            <div class="col-md-6">
            </div>
            <div class="col-md-3">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" CssClass="btn btn-primary btn-block" />
            </div>
            <div class="col-md-3">
                <asp:Button ID="btnshow" runat="server" Text="Show" OnClick="btnshow_Click" CssClass="btn btn-success btn-block" />
            </div>
        </div>

        <div runat="server" id="fiddiv" visible="false">
            <div class="form-group">
                Select Department Name:
                <asp:DropDownList ID="ddlselectdep" runat="server" CssClass="form-control"></asp:DropDownList>
                <asp:Button ID="btnfind" runat="server" Text="FIND" OnClick="btnfind_Click" CssClass="btn btn-primary mt-2" />
            </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table mt-3">
                <Columns>
                    <asp:TemplateField HeaderText="Srno">
                        <ItemTemplate>
                            <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>' ToolTip='<%#Eval("user_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="College Name">
                        <ItemTemplate>
                            <asp:TextBox ID="txtcolname" runat="server" Text='<%#Eval("collegename") %>' CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Department">
                        <ItemTemplate>
                            <asp:Label ID="lbldepname" runat="server" Text='<%#Eval("deptname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Faculty Name">
                        <ItemTemplate>
                            <asp:TextBox ID="txtfacultyname" runat="server" Text='<%#Eval("username") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="User Id">
                        <ItemTemplate>
                            <asp:TextBox ID="txtuserid" runat="server" Text='<%#Eval("userid") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:TextBox ID="txtpassword" runat="server" Text='<%#Eval("password") %>' CssClass="form-control"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" CommandArgument='<%#Eval("user_id") %>' CssClass="btn btn-warning btn-sm" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" CommandArgument='<%#Eval("user_id") %>' ToolTip='<%# Container.DataItemIndex + 1 %>' CssClass="btn btn-danger btn-sm" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</div>

</asp:Content>
