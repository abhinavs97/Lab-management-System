<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addemp.aspx.vb" Inherits="LMS_WEB_.addemp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
    <script type="text/javascript" language="javascript">


        $(function () {
            $("#<%=TextBox12.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd/mm/yyyy",
                yearRange: '1950:2019'
            });
        });

        $(function () {
            $("#<%=TextBox13.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd/mm/yyyy",
                yearRange: '2019:2050'
            });
        });
        </script>
</head>
<body>
    <div>
<form id="Form1" class="form-horizontal" runat="server" style=" background-color: #FFFAFA">
    <fieldset>

        <!-- Form Name -->
        <legend>ADD EMPLOYEES</legend>

                <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="eid">Employee ID</label>  
          <div class="col-md-4">
      <asp:TextBox ID="TextBox1" runat="server" name="id" class="form-control input-md" 
                  required="" ReadOnly="True"></asp:TextBox> 
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="name">Employee Name</label>  
          <div class="col-md-4">

          <asp:TextBox ID="TextBox2" runat="server" name="name" placeholder="Patient Name" class="form-control input-md" required=""></asp:TextBox>
          <span class="help-block">Name of Employee</span>  
          </div>
        </div>

                <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="speciality">Speciality</label>  
          <div class="col-md-4">

          <asp:TextBox ID="TextBox3" runat="server" name="name" placeholder="Specaility" class="form-control input-md" required=""></asp:TextBox>
          <span class="help-block">Employee Speciality</span>  
          </div>
        </div>


        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="phone">Phone Number</label>  
          <div class="col-md-4">

          <asp:TextBox ID="TextBox4" runat="server" name="phone" placeholder="Phone Number" class="form-control input-md" required="" MaxLength="10"></asp:TextBox>
          <span class="help-block">Phone will be used for notication messages and OTP</span>  
          </div>
        </div>

        <!-- Password input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="password">Password </label>
          <div class="col-md-4">
              <asp:TextBox ID="TextBox5" runat="server" name="password" placeholder="Password " class="form-control input-md" required=""></asp:TextBox>
            <span class="help-block">Enter Password </span>
          </div>
        </div>

        <!-- Password input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="rpassword">confirm</label>
          <div class="col-md-4">

                  <asp:TextBox ID="TextBox6" runat="server" name="rpassword" placeholder="Password" class="form-control input-md" required=""></asp:TextBox>
            <span class="help-block">Retype password</span>
          </div>
        </div>

                <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="email">Email</label>  
          <div class="col-md-4">

                      <asp:TextBox ID="TextBox7" runat="server" name="email" placeholder="Email" class="form-control input-md" required=""></asp:TextBox>
    <span class="help-block">Email will be used for notication messages</span>
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="address1">Address</label>  
          <div class="col-md-4">
          
                          <asp:TextBox ID="TextBox8" runat="server" name="address1" type="text" placeholder="House no\apartment name" class="form-control input-md" required=""></asp:TextBox>
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="address1"></label>  
          <div class="col-md-4">
          <asp:TextBox ID="TextBox9" runat="server" name="address1" placeholder="Street\Locality\Landmark" class="form-control input-md"></asp:TextBox>
  
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="city">City</label>  
          <div class="col-md-4">

              <asp:TextBox ID="TextBox10" runat="server" name="city" placeholder="City" class="form-control input-md" required=""></asp:TextBox>
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="selectbasic">Select Basic</label>
          <div class="col-md-4">

                  <asp:DropDownList ID="DropDownList1" runat="server" class="form-control input-md">
                  <asp:ListItem value="choose">Choose State</asp:ListItem>
                      <asp:ListItem value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</asp:ListItem>
<asp:ListItem value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
<asp:ListItem value="Arunachal Pradesh">Arunachal Pradesh</asp:ListItem>
<asp:ListItem value="Assam">Assam</asp:ListItem>
<asp:ListItem value="Bihar">Bihar</asp:ListItem>
<asp:ListItem value="Chandigarh">Chandigarh</asp:ListItem>
<asp:ListItem value="Chhattisgarh">Chhattisgarh</asp:ListItem>
<asp:ListItem value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</asp:ListItem>
<asp:ListItem value="Daman and Diu">Daman and Diu</asp:ListItem>
<asp:ListItem value="Delhi">Delhi</asp:ListItem>
<asp:ListItem value="Goa">Goa</asp:ListItem>
<asp:ListItem value="Gujarat">Gujarat</asp:ListItem>
<asp:ListItem value="Haryana">Haryana</asp:ListItem>
<asp:ListItem value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
<asp:ListItem value="Jammu and Kashmir">Jammu and Kashmir</asp:ListItem>
<asp:ListItem value="Jharkhand">Jharkhand</asp:ListItem>
<asp:ListItem value="Karnataka">Karnataka</asp:ListItem>
<asp:ListItem value="Kerala">Kerala</asp:ListItem>
<asp:ListItem value="Lakshadweep">Lakshadweep</asp:ListItem>
<asp:ListItem value="Madhya Pradesh">Madhya Pradesh</asp:ListItem>
<asp:ListItem value="Maharashtra">Maharashtra</asp:ListItem>
<asp:ListItem value="Manipur">Manipur</asp:ListItem>
<asp:ListItem value="Meghalaya">Meghalaya</asp:ListItem>
<asp:ListItem value="Mizoram">Mizoram</asp:ListItem>
<asp:ListItem value="Nagaland">Nagaland</asp:ListItem>
<asp:ListItem value="Orissa">Orissa</asp:ListItem>
<asp:ListItem value="Pondicherry">Pondicherry</asp:ListItem>
<asp:ListItem value="Punjab">Punjab</asp:ListItem>
<asp:ListItem value="Rajasthan">Rajasthan</asp:ListItem>
<asp:ListItem value="Sikkim">Sikkim</asp:ListItem>
<asp:ListItem value="Tamil Nadu">Tamil Nadu</asp:ListItem>
<asp:ListItem value="Tripura">Tripura</asp:ListItem>
<asp:ListItem value="Uttaranchal">Uttaranchal</asp:ListItem>
<asp:ListItem value="Uttar Pradesh">Uttar Pradesh</asp:ListItem>
<asp:ListItem value="West Bengal">West Bengal</asp:ListItem>
                  </asp:DropDownList>
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="zip">Zip Code</label>  
          <div class="col-md-4">
            <asp:TextBox ID="TextBox11" runat="server" name="zip" placeholder="Zip Code" class="form-control input-md" required="" MaxLength="6"></asp:TextBox>
    
          </div>
        </div>


        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="roles">Roles</label>  
          <div class="col-md-4">

              <asp:DropDownList ID="DropDownList2" runat="server" 
                  class="form-control input-md" DataSourceID="SqlDataSource1" 
                  DataTextField="rname" DataValueField="rid">
                                <asp:ListItem value="none">None</asp:ListItem>
              </asp:DropDownList>
          </div>
        </div>

                <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="startdate">Start Date</label>  
          <div class="col-md-4">

          <asp:TextBox ID="TextBox12" runat="server" name="regdate" placeholder="Starting Date" class="form-control input-md" ></asp:TextBox>

          </div>
        </div>

                <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="enddate">End Date</label>  
          <div class="col-md-4">
          <asp:TextBox ID="TextBox13" runat="server" name="regdate" placeholder="Starting Date" class="form-control input-md" text="NONE"></asp:TextBox>
          </div>
        </div>

        <!-- Button (Double) -->
        <div class="form-group">
          <label class="col-md-4 control-label" for="save"></label>
          <div class="col-md-8">

                  <asp:Button ID="Button1" runat="server" Text="Add"  name="save" class="btn btn-success"/>
                  <asp:Button ID="Button2" runat="server" Text="Cancel" name="cancel" class="btn btn-danger"/>
          </div>
        </div>

      <asp:TextBox ID="TextBox15" runat="server" Visible="False"></asp:TextBox> 
    </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        SelectCommand="SELECT * FROM [role]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        DeleteCommand="DELETE FROM [emp] WHERE [eid] = @eid" 
        InsertCommand="INSERT INTO [emp] ([eid], [ename], [speciality], [phone], [email], [address], [password], [roles], [start_date], [end_date]) VALUES (@eid, @ename, @speciality, @phone, @email, @address, @password, @roles, @start_date, @end_date)" 
        SelectCommand="SELECT * FROM [emp]" 
        UpdateCommand="UPDATE [emp] SET [ename] = @ename, [speciality] = @speciality, [phone] = @phone, [email] = @email, [address] = @address, [password] = @password, [roles] = @roles, [start_date] = @start_date, [end_date] = @end_date WHERE [eid] = @eid">
        <DeleteParameters>
            <asp:Parameter Name="eid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Name="eid" Type="Int32" ControlId="textbox1"/>
            <asp:ControlParameter Name="ename" Type="String" ControlId="textbox2"/>
            <asp:ControlParameter Name="speciality" Type="String" ControlId="textbox3"/>
            <asp:ControlParameter Name="phone" Type="Decimal" ControlId="textbox4"/>
            <asp:ControlParameter Name="email" Type="String" ControlId="textbox7"/>
            <asp:ControlParameter Name="address" Type="String" ControlId="textbox15"/>
            <asp:ControlParameter Name="password" Type="String" ControlId="textbox5"/>
            <asp:ControlParameter Name="roles" Type="String" ControlId="dropdownlist2"/>
            <asp:ControlParameter DbType="Date" Name="start_date" ControlId="textbox12"/>
            <asp:ControlParameter DbType="Date" Name="end_date" ControlId="textbox13"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ename" Type="String" />
            <asp:Parameter Name="speciality" Type="String" />
            <asp:Parameter Name="phone" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="roles" Type="String" />
            <asp:Parameter DbType="Date" Name="start_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
            <asp:Parameter Name="eid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</body>
</html>
