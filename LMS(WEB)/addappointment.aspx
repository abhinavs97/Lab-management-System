<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addappointment.aspx.vb" Inherits="LMS_WEB_.addappointment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script type="text/javascript" language="javascript">


        $(function () {
            $("#<%=TextBox2.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd/mm/yyyy",
                yearRange: '1950:2018'
            });
        });
        </script>
    <style type="text/css">
        .style1
        {
            width: 176px;
        }
        .style2
        {
            width: 394px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family: &quot;times New Roman&quot;, Times, serif; font-style: normal; font-variant: normal; text-transform: uppercase; color: #FFFFFF; background-color: #808000">
    
        <asp:Label ID="Label1" runat="server" Text="Add new Appointment"></asp:Label>
    
    </div>
    <table style="width:100%;">
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Appointment ID :-"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Patient ID :-"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="p_id" DataValueField="p_id">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="Date :-"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label5" runat="server" Text="Home Visit"></asp:Label>
            </td>
            <td class="style2">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a1" Text="YES" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a1" Text="NO" />
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label6" runat="server" Text="Tests"></asp:Label>
            </td>
            <td class="style2">
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label7" runat="server" Text="Referred By Doctor :-"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="rname" DataValueField="rname">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label8" runat="server" Text="Referral Payment amount :-"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label9" runat="server" Text="Referral Payment Status :-"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label10" runat="server" Text="Total Bill :-"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label11" runat="server" Text="Packages :-"></asp:Label>
            </td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" Text="ADD" />
            </td>
            <td class="style2">
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        DeleteCommand="DELETE FROM [appointment] WHERE [aid] = @aid" 
        InsertCommand="INSERT INTO [appointment] ([aid], [p_id], [date_time], [home_visit], [tests], [ref_doc], [ref_pay_amt], [ref_pay_status], [tot_bill], [packages]) VALUES (@aid, @p_id, @date_time, @home_visit, @tests, @ref_doc, @ref_pay_amt, @ref_pay_status, @tot_bill, @packages)" 
        SelectCommand="SELECT * FROM [appointment]" 
        UpdateCommand="UPDATE [appointment] SET [p_id] = @p_id, [date_time] = @date_time, [home_visit] = @home_visit, [tests] = @tests, [ref_doc] = @ref_doc, [ref_pay_amt] = @ref_pay_amt, [ref_pay_status] = @ref_pay_status, [tot_bill] = @tot_bill, [packages] = @packages WHERE [aid] = @aid">
        <DeleteParameters>
            <asp:Parameter Name="aid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Name="aid" Type="Int32" ControlId="textbox1"/>
            <asp:ControlParameter Name="p_id" Type="Int32" ControlId="DropdownList1"/>
            <asp:ControlParameter Name="date_time" Type="DateTime" ControlId="textbox2"/>
            <asp:ControlParameter Name="home_visit" Type="Object" ControlId="textbox7"/>
            <asp:ControlParameter Name="tests" Type="String" ControlId="checkboxlist1"/>
            <asp:ControlParameter Name="ref_doc" Type="String" ControlId="DropdownList2"/>
            <asp:ControlParameter Name="ref_pay_amt" Type="Int32" ControlId="textbox4"/>
            <asp:ControlParameter Name="ref_pay_status" Type="Object" ControlId="textbox5"/>
            <asp:ControlParameter Name="tot_bill" Type="Decimal" ControlId="textbox6"/>
            <asp:ControlParameter Name="packages" Type="String" ControlId="dropdownlist3"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="p_id" Type="Int32" />
            <asp:Parameter Name="date_time" Type="DateTime" />
            <asp:Parameter Name="home_visit" Type="Object" />
            <asp:Parameter Name="tests" Type="String" />
            <asp:Parameter Name="ref_doc" Type="String" />
            <asp:Parameter Name="ref_pay_amt" Type="Int32" />
            <asp:Parameter Name="ref_pay_status" Type="Object" />
            <asp:Parameter Name="tot_bill" Type="Decimal" />
            <asp:Parameter Name="packages" Type="String" />
            <asp:Parameter Name="aid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        SelectCommand="SELECT * FROM [patient]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        SelectCommand="SELECT * FROM [referrals]"></asp:SqlDataSource>
    <asp:TextBox ID="TextBox7" runat="server" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
