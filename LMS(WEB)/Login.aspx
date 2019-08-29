<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="LMS_WEB_.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/login_css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="for-pwd"><label for="tab-2" class="tab">Forgot Password</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username or Email</label>

        <asp:TextBox ID="TextBox1" runat="server" class="input"></asp:TextBox>
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>

            <asp:TextBox ID="TextBox2" runat="server" class="input"></asp:TextBox>
					
				</div>
                				<div class="group">
					<label for="type" class="label">User Type</label>
        <asp:DropDownList ID="DropDownList1" runat="server" class="input" ForeColor="Black">
            <asp:ListItem>Select Type</asp:ListItem>           
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Patient</asp:ListItem>
            <asp:ListItem>Staff</asp:ListItem>
        </asp:DropDownList>
				</div>
				<div class="group">
            <asp:Button ID="Button1" runat="server" Text="Submit" class="button"/>
				</div>
				<div class="hr"></div>
			</div>
			<div class="for-pwd-htm">
				<div class="group">
					<label for="user" class="label">Enter Your Mobile Number</label>
                <asp:TextBox ID="TextBox3" runat="server" class="input"></asp:TextBox>
				</div>
                <div class="group">
					<label for="type2" class="label">User Type</label>
        <asp:DropDownList ID="DropDownList2" runat="server" class="input" ForeColor="Black">
            <asp:ListItem>Select Type</asp:ListItem>           
            <asp:ListItem>Patient</asp:ListItem>
            <asp:ListItem>Staff</asp:ListItem>
        </asp:DropDownList>
				</div>
				<div class="group">
                    <asp:Button ID="Button2" runat="server" Text="Submit" class="button"/>
				</div>
				<div class="hr"></div>
			</div>
		</div>
	</div>
</div>
  
    </form>
</body>
</html>
