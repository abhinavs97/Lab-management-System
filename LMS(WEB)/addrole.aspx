<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addrole.aspx.vb" Inherits="LMS_WEB_.addrole" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 108px;
        }
    </style>
</head>
<body>
<div>
<form id="Form1" class="form-horizontal" runat="server" style=" background-color: #FFFAFA">
    <fieldset>

        <!-- Form Name -->
        <legend>ADD ROLE</legend>

                <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="rid">Role ID</label>  
          <div class="col-md-4">
      <asp:TextBox ID="TextBox1" runat="server" name="id" class="form-control input-md" 
                  required="" ReadOnly="True"></asp:TextBox> 
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="name">Role Name</label>  
          <div class="col-md-4">

          <asp:TextBox ID="TextBox2" runat="server" name="name" placeholder="Sample Name" class="form-control input-md" required=""></asp:TextBox>
          <span class="help-block">Name of Role</span>  
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



      </fieldset>

        </form>
</div>
</body>
</html>
