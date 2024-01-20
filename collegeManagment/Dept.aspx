<%@ Page Title="" Language="C#" MasterPageFile="~/CollegeAdmin.Master" AutoEventWireup="true" CodeBehind="Dept.aspx.cs" Inherits="collegeManagment.Dept" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--  <div class="align-content-center" >
    College Name: <asp:TextBox ID="txtcolname" runat="server"></asp:TextBox><br />

    College Code: <asp:TextBox ID="txtcolcode" runat="server"></asp:TextBox><br />

    Department Name: <asp:TextBox ID="txtdepname" runat="server"></asp:TextBox><br />
       <div class="col-12">
           <div class="col-6">
               
          </div>
           <div class="row">
           <div class="row col-4" >
               <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="Button1_Click" />
          </div>
               <div class="col-4">
                   <asp:Button ID="btnshow" runat="server" Text="Show" OnClick="Button2_Click" />
               </div>
               </div>

       </div>

      
 </div>

    <asp:Button ID="btndelete" runat="server" Text="delete" OnClick="btndelete_Click" />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText=" Srno">
                <ItemTemplate>
                    <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>' ToolTip='<%#Eval("dep_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

              <asp:TemplateField HeaderText="College Code">
                <ItemTemplate>
                    <asp:Label ID="lblcolcode" runat="server" Text='<%#Eval("collegecode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Department Name ">
                <ItemTemplate>
                    <asp:Label ID="lbldepname" runat="server" Text='<%#Eval("deptname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

           

        </Columns>

    </asp:GridView>--%>

    <div class="container mt-3">
    <div class="align-content-center">
        <div class="form-group">
            College Name: <asp:TextBox ID="txtcolname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            College Code: <asp:TextBox ID="txtcolcode" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            Department Name: <asp:TextBox ID="txtdepname" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="row">
            <div class="col-md-6">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
            </div>
            <div class="col-md-3">
                <asp:Button ID="btnshow" runat="server" Text="Show" OnClick="Button2_Click" CssClass="btn btn-success" />
            </div>
            <div class="col-md-3">
                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" CssClass="btn btn-danger" />
            </div>
        </div>
    </div>

    <div class="mt-3">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Srno">
                    <ItemTemplate>
                        <asp:Label ID="lblsrno" runat="server" Text='<%# Container.DataItemIndex + 1 %>' ToolTip='<%#Eval("dep_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="College Code">
                    <ItemTemplate>
                        <asp:Label ID="lblcolcode" runat="server" Text='<%#Eval("collegecode") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Department Name">
                    <ItemTemplate>
                        <asp:Label ID="lbldepname" runat="server" Text='<%#Eval("deptname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
</div>
</asp:Content>
