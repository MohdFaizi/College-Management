<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeAdmin.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="collegeManagment.Report" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <div class="p-3">
    <div runat="server" id="fiddiv">
        Select Department Name:
        <asp:DropDownList ID="ddlselectdep" runat="server"></asp:DropDownList>
        <asp:Button ID="btnfind" runat="server" Text="FIND" OnClick="btnfind_Click" />
        <asp:Button ID="btnfinll" runat="server" Text="FIND" OnClick="btnfinll_Click" />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Srno">
                    <ItemTemplate>
                        <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>

                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="College code">
                    <ItemTemplate>
                        <asp:Label ID="txtcollegecod" runat="server" Text='<%#Eval("collegecode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Student Name ">
                    <ItemTemplate>
                        <asp:Label ID="lblstuname" runat="server" Text='<%#Eval("studentname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email Id  ">
                    <ItemTemplate>
                        <asp:Label ID="txtemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Department ">
                    <ItemTemplate>
                        <asp:Label ID="txtdepartment" runat="server" Text='<%#Eval("branch") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Complaint To  ">
                    <ItemTemplate>
                        <asp:Label ID="txtcompto" runat="server" Text='<%#Eval("complaintto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Message  ">
                    <ItemTemplate>
                        <asp:Label ID="txtmsg" runat="server" Text='<%#Eval("message") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Resolve By  ">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlresolvby" runat="server"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField HeaderText="Status   ">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlstatus" runat="server">
                            <asp:ListItem Value="">Please Select</asp:ListItem>
                            <asp:ListItem Value="Close">Close</asp:ListItem>
                            <asp:ListItem Value="Forword">Forword</asp:ListItem>
                            <asp:ListItem Value="Pending">Pending</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action ">
                    <ItemTemplate>
                        <asp:Button ID="btnupdate" runat="server" Text="Upadte" OnClick="btnupdate_Click" CommandArgument='<%#Eval("id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" CommandArgument='<%#Eval("id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>



            </Columns>

        </asp:GridView>

    </div>

    </div>--%>

    <div class="container p-3">
    <div runat="server" id="fiddiv">
        <div class="form-row mb-3">
            <div class="col-md-4">
                Select Department Name:
                <asp:DropDownList ID="ddlselectdep" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-md-4">
                <asp:Button ID="btnfind" runat="server" Text="Find" OnClick="btnfind_Click" CssClass="btn btn-primary" />
            </div>
            <div class="col-md-4">
                <asp:Button ID="btnfinll" runat="server" Text="Find All" OnClick="btnfinll_Click" CssClass="btn btn-secondary" />
            </div>
        </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table">
            <Columns>
                <asp:TemplateField HeaderText="Srno">
                    <ItemTemplate>
                        <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="College code">
                    <ItemTemplate>
                        <asp:Label ID="txtcollegecod" runat="server" Text='<%#Eval("collegecode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Student Name">
                    <ItemTemplate>
                        <asp:Label ID="lblstuname" runat="server" Text='<%#Eval("studentname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email Id">
                    <ItemTemplate>
                        <asp:Label ID="txtemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Department">
                    <ItemTemplate>
                        <asp:Label ID="txtdepartment" runat="server" Text='<%#Eval("branch") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Complaint To">
                    <ItemTemplate>
                        <asp:Label ID="txtcompto" runat="server" Text='<%#Eval("complaintto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Message">
                    <ItemTemplate>
                        <asp:Label ID="txtmsg" runat="server" Text='<%#Eval("message") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Resolve By">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlresolvby" runat="server" CssClass="form-control"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlstatus" runat="server" CssClass="form-control">
                            <asp:ListItem Value="">Please Select</asp:ListItem>
                            <asp:ListItem Value="Close">Close</asp:ListItem>
                            <asp:ListItem Value="Forword">Forword</asp:ListItem>
                            <asp:ListItem Value="Pending">Pending</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" CommandArgument='<%#Eval("id") %>' CssClass="btn btn-warning btn-sm" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" CommandArgument='<%#Eval("id") %>' CssClass="btn btn-danger btn-sm" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>

</asp:Content>
