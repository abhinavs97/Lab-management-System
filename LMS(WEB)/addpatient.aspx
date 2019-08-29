<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addpatient.aspx.vb" Inherits="LMS_WEB_.addpatient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title></title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
    <script src="http://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js" type="text/javascript" /></script>

    <script type="text/javascript" language="javascript">


        $(function () {
            $("#<%=TextBox3.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd/mm/yy",
                yearRange: '1950:2018'
            });
        });
        $(function () {
            $("#<%=TextBox12.ClientID %>").datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: "dd/mm/yy",
                yearRange: '1950:2018'
            });
        });
    </script>

    <style type="text/css">
        .style2
        {
            width: 77px;
        }
        .style3
        {
            width: 145px;
        }
    </style>

</head>
<body>
    
  <div>
<form class="form-horizontal" runat="server" style=" background-color: #FFFAFA">
    <fieldset>

        <!-- Form Name -->
        <legend>ADD PATIENT</legend>

                <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="pid">Patient ID</label>  
          <div class="col-md-4">
      <asp:TextBox ID="TextBox1" runat="server" name="id" class="form-control input-md" 
                  required="" ReadOnly="True"></asp:TextBox> 
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="name">Patient Name</label>  
          <div class="col-md-4">

          <asp:TextBox ID="TextBox2" runat="server" name="name" placeholder="Patient Name" class="form-control input-md" required=""></asp:TextBox>
          <span class="help-block">Name of Patient</span>  
          </div>
        </div>

        <!-- Select gender-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="gender">Gender</label>  
          <div class="col-md-4">
              <asp:RadioButton ID="RadioButton1" runat="server" Text=" MALE" GroupName="a1" Font-Bold="False" />
              <asp:RadioButton ID="RadioButton2" runat="server" Text=" FEMALE" GroupName="a1" />
              <asp:RadioButton ID="RadioButton3" runat="server" Text=" OTHER" GroupName="a1" />
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="dob">Date Of Birth</label>  
          <div class="col-md-4">
                  <asp:TextBox ID="TextBox3" runat="server" name="dob" placeholder="Date Of Birth" class="form-control input-md" required=""></asp:TextBox>
          <span class="help-block">Select Date Of Birth</span>  
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
          <label class="col-md-4 control-label" for="Aadhar">Aadhar Card Number</label>  
          <div class="col-md-4">
          <asp:TextBox ID="TextBox14" runat="server" name="aadhar" placeholder="Aadhar Card Number" class="form-control input-md" ></asp:TextBox>
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="registerdate">Registered Date</label>  
          <div class="col-md-4">

          <asp:TextBox ID="TextBox12" runat="server" name="regdate" placeholder="Registered Date" class="form-control input-md" ></asp:TextBox>

          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="referby">Referred By</label>  
          <div class="col-md-4">

              <asp:DropDownList ID="DropDownList2" runat="server" 
                  class="form-control input-md" DataSourceID="SqlDataSource1" 
                  DataTextField="rname" DataValueField="rid">
                                <asp:ListItem value="none">None</asp:ListItem>
              </asp:DropDownList>
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

      <asp:TextBox ID="TextBox13" runat="server" Visible="False"></asp:TextBox>
      <asp:TextBox ID="TextBox15" runat="server"  Visible="False"></asp:TextBox>
      </fieldset>

        </form>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        SelectCommand="SELECT * FROM [referrals]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LMSConnectionString %>" 
        DeleteCommand="DELETE FROM [patient] WHERE [p_id] = @p_id" 
        InsertCommand="INSERT INTO [patient] ([p_id], [p_name], [gender], [dob], [phone], [email], [password], [address], [aadhar], [reg_date], [ref_by]) VALUES (@p_id, @p_name, @gender, @dob, @phone, @email, @password, @address, @aadhar, @reg_date, @ref_by)" 
        SelectCommand="SELECT * FROM [patient]" 
        UpdateCommand="UPDATE [patient] SET [p_name] = @p_name, [gender] = @gender, [dob] = @dob, [phone] = @phone, [email] = @email, [password] = @password, [address] = @address, [aadhar] = @aadhar, [reg_date] = @reg_date, [ref_by] = @ref_by WHERE [p_id] = @p_id">
        <DeleteParameters>
            <asp:Parameter Name="p_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter Name="p_id" Type="Int32" ControlId="textbox1"/>
            <asp:ControlParameter Name="p_name" Type="String" ControlId="textbox2"/>
            <asp:ControlParameter Name="gender" Type="String" ControlId="textbox13"/>
            <asp:ControlParameter DbType="Date" Name="dob" ControlId="textbox3"/>
            <asp:ControlParameter Name="phone" Type="Decimal" ControlId="textbox4"/>
            <asp:ControlParameter Name="email" Type="String" ControlId="textbox7"/>
            <asp:ControlParameter Name="password" Type="String" ControlId="textbox5"/>
            <asp:ControlParameter Name="address" Type="String" ControlId="textbox15"/>
            <asp:ControlParameter Name="aadhar" Type="Decimal" ControlId="textbox14"/>
            <asp:ControlParameter DbType="Date" Name="reg_date" ControlId="textbox12"/>
            <asp:ControlParameter Name="ref_by" Type="String" ControlId="dropdownlist2"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="p_name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter DbType="Date" Name="dob" />
            <asp:Parameter Name="phone" Type="Decimal" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="aadhar" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="reg_date" />
            <asp:Parameter Name="ref_by" Type="String" />
            <asp:Parameter Name="p_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</body>
</html>
