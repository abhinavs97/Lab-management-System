﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="viewsample.aspx.vb" Inherits="LMS_WEB_.viewsample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 172px;
            height: 116px;
        }
        .style3
        {
            height: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
 
    <table style="width:100%;">
        <tr>
            <td class="style2">
 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="sid" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Horizontal" AutoGenerateDeleteButton="True" 
                    AutoGenerateEditButton="True">
        <Columns>
            <asp:BoundField DataField="sid" HeaderText="sid" ReadOnly="True" 
                SortExpression="sid" />
            <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
            <asp:CheckBoxField DataField="home_visit" HeaderText="home_visit" 
                SortExpression="home_visit" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
  
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        DeleteCommand="DELETE FROM [sample] WHERE [sid] = @sid" 
        InsertCommand="INSERT INTO [sample] ([sid], [sname], [home_visit]) VALUES (@sid, @sname, @home_visit)" 
        SelectCommand="SELECT * FROM [sample]" 
        UpdateCommand="UPDATE [sample] SET [sname] = @sname, [home_visit] = @home_visit WHERE [sid] = @sid">
        <DeleteParameters>
            <asp:Parameter Name="sid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sid" Type="Int32" />
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter Name="home_visit" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="sname" Type="String" />
            <asp:Parameter Name="home_visit" Type="Boolean" />
            <asp:Parameter Name="sid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
