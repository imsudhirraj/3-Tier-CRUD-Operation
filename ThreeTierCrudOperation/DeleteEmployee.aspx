<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs" Inherits="ThreeTierCrudOperation.DeleteEmployee" %>

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
                    <td colspan="2" style="font-weight: 300" class="auto-style1">
                        <t3>
                            <b>UPDATE EMPLOYEE </b>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="DlblEmpId" runat="server" Text="Emp Id"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="DtxtEmpId" runat="server" ToolTip="Enter your Id"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">

                        <asp:Button ID="UbtnDelete" runat="server" BackColor="Black" BorderWidth="3px" Font-Bold="true" ForeColor="White" Height="34px" Text="Delete" Width="81px" OnClick="DbtnDelete_Click"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2">

                        <asp:TextBox ID="DtxtSearch" runat="server" Height="26px" Width="166px" ToolTip="Enter Employee Id to Search"></asp:TextBox>

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
