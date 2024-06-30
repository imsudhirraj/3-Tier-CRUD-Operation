<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeePL.aspx.cs" Inherits="ThreeTierCrudOperation.EmployeePL" %>
<%@ OutputCache Duration="30" VaryByParam="None" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 340px;
        }

        .auto-style2 {
            height: 38px;
        }

        .auto-style3 {
            width: 133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table>
                <tr>
                    <td colspan="2" style="text-align: center; font-weight: 300" class="auto-style1">
                        <t3>
                            <b>EMPLOYEE REGISTRATION</b></td>


                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server" ToolTip="Enter your name"></asp:TextBox>
                    </td>

                </tr>


                <tr>
                    <td>
                        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPhone" runat="server" ToolTip="Enter Phone number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSalary" runat="server" Text="Salary"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtSalary" runat="server" ToolTip="Enter Salary"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="1">Male</asp:ListItem>
                            <asp:ListItem Value="2">Female</asp:ListItem>
                            <asp:ListItem Value="3">Others</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>



                <tr>
                    <td class="auto-style2" colspan="2">

                        <asp:Button ID="btnSave" runat="server" Font-Bold="true" ForeColor="White" BackColor="Black" Text="Save" BorderWidth="3px" Width="90px" OnClick="btnSave_Click" Height="33px" />
                        <asp:Button ID="btnUpdate" runat="server" BackColor="Black" BorderWidth="3px" Font-Bold="true" ForeColor="White" Height="34px" Text="Update" Width="81px" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" BackColor="Black" BorderWidth="3px" Font-Bold="true" ForeColor="White" Height="33px" Text="Delete" Width="89px" OnClick="btnDelete_Click" />
                    </td>
                </tr>



                <tr>
                    <td class="auto-style2" colspan="2">

                        <asp:TextBox ID="txtSearch" runat="server" Height="26px" Width="166px" ToolTip="Enter Employee Id to Search"></asp:TextBox>

                        <asp:Button ID="btnSearch" runat="server" Font-Bold="true" ForeColor="White" BackColor="Black" Text="Search" BorderWidth="3px" Width="89px" Height="34px" OnClick="btnSearch_Click" />

                    </td>
                </tr>



                <tr>
                    <td colspan="2" style="text-align: center; font-weight: 300" class="auto-style1">
                        <t3>
                            <b>EMPLOYEE DETAILS</b></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" >
                        <asp:GridView ID="GridView1" runat="server" Height="150px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
                    </td>
                </tr>
            </table>

            
        </div>
    </form>
</body>
</html>
