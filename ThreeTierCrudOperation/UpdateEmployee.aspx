<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmployee.aspx.cs" Inherits="ThreeTierCrudOperation.UpdateEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2" style=" font-weight: 300" class="auto-style1">
                        <t3>
                            <b>UPDATE EMPLOYEE </b>
                    </td>


                </tr>

                <tr>
    <td>
        <asp:Label ID="UlblEmpId" runat="server" Text="Emp Id"></asp:Label>
    </td>
    <td class="auto-style3">
        <asp:TextBox ID="UtxtEmpId" runat="server" ToolTip="Enter your Id"></asp:TextBox>
    </td>

</tr>

                <tr>
                    <td>
                        <asp:Label ID="UlblName" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="UtxtName" runat="server" ToolTip="Enter your name"></asp:TextBox>
                    </td>

                </tr>


                <tr>
                    <td>
                        <asp:Label ID="UlblPhone" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="UtxtPhone" runat="server" ToolTip="Enter Phone number"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="UlblSalary" runat="server" Text="Salary"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="UtxtSalary" runat="server" ToolTip="Enter Salary"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="UlblGender" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="UddlGender" runat="server">
                            <asp:ListItem Value="-1">Select</asp:ListItem>
                            <asp:ListItem Value="1">Male</asp:ListItem>
                            <asp:ListItem Value="2">Female</asp:ListItem>
                            <asp:ListItem Value="3">Others</asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>



                <tr>
                    <td class="auto-style2" colspan="2">

                        <asp:Button ID="UbtnUpdate" runat="server" BackColor="Black" BorderWidth="3px" Font-Bold="true" ForeColor="White" Height="34px" Text="Update" Width="81px" OnClick="UbtnUpdate_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">

                        <asp:TextBox ID="UtxtSearch" runat="server" Height="26px" Width="166px" ToolTip="Enter Employee Id to Search"></asp:TextBox>

                        <asp:Button ID="UbtnSearch" runat="server" Font-Bold="true" ForeColor="White" BackColor="Black" Text="Search" BorderWidth="3px" Width="89px" Height="34px" OnClick="btnSearch_Click" />

                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center; font-weight: 300" class="auto-style1">
                        <t3>
                            <b>EMPLOYEE DETAILS</b></td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:GridView ID="UGridView1" runat="server" Height="150px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
