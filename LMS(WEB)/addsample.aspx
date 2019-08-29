<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="addsample.aspx.vb" Inherits="LMS_WEB_.addsample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title></title>
</head>
<body>
<div>
<form id="Form1" class="form-horizontal" runat="server" style=" background-color: #FFFAFA">
    <fieldset>

        <!-- Form Name -->
        <legend>ADD SAMPLE</legend>

                <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="pid">Sample ID</label>  
          <div class="col-md-4">
      <asp:TextBox ID="TextBox1" runat="server" name="id" class="form-control input-md" 
                  required="" ReadOnly="True"></asp:TextBox> 
          </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="name">Sample Name</label>  
          <div class="col-md-4">

          <asp:TextBox ID="TextBox2" runat="server" name="name" placeholder="Sample Name" class="form-control input-md" required=""></asp:TextBox>
          <span class="help-block">Name of Sample</span>  
          </div>
        </div>

        <!-- Select gender-->
        <div class="form-group">
          <label class="col-md-4 control-label" for="home_visit">Home Visit</label>  
          <div class="col-md-4">
              <asp:RadioButton ID="RadioButton1" runat="server" Text=" YES" GroupName="a1" Font-Bold="False" />
              <asp:RadioButton ID="RadioButton2" runat="server" Text=" NO" GroupName="a1" />
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
