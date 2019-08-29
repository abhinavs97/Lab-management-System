<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="viewemp.aspx.vb" Inherits="LMS_WEB_.viewemp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="eid" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" 
                SortExpression="eid" />
            <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
            <asp:BoundField DataField="speciality" HeaderText="speciality" 
                SortExpression="speciality" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="roles" HeaderText="roles" 
                SortExpression="roles" />
            <asp:BoundField DataField="start_date" HeaderText="start_date" 
                SortExpression="start_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" 
                SortExpression="end_date" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        DeleteCommand="DELETE FROM [emp] WHERE [eid] = @eid" 
        InsertCommand="INSERT INTO [emp] ([eid], [ename], [speciality], [phone], [email], [address], [roles], [start_date], [end_date]) VALUES (@eid, @ename, @speciality, @phone, @email, @address, @roles, @start_date, @end_date)" 
        SelectCommand="SELECT * FROM [emp]" 
        UpdateCommand="UPDATE [emp] SET [ename] = @ename, [speciality] = @speciality, [phone] = @phone, [email] = @email, [address] = @address, [roles] = @roles, [start_date] = @start_date, [end_date] = @end_date WHERE [eid] = @eid">
        <DeleteParameters>
            <asp:Parameter Name="eid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eid" Type="Int32" />
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="speciality" Type="String" />
            <asp:Parameter Name="phone" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="roles" Type="String" />
            <asp:Parameter DbType="Date" Name="start_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="speciality" Type="String" />
            <asp:Parameter Name="phone" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="roles" Type="String" />
            <asp:Parameter DbType="Date" Name="start_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
            <asp:Parameter Name="eid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
