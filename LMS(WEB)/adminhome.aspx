<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="adminhome.aspx.vb" Inherits="LMS_WEB_.adminhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <title>Untitled Page</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="Styles/adminhome.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/adminhome.js" type="text/javascript"></script>
</head>

<body>
 <form id="form1" runat="server">
        <div id="wrapper">
        <div class="overlay"></div>
    
        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                       DiTrinity
                    </a>
                </li>
                <li>
                    <a href="#">Home</a>
                </li>

                <li class="dropdown">
                  
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tests <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                   <li class="dropdown-header"></li>
                    <li><a href="#">Add Test</a></li>
                    <li><a href="#">Test List</a></li>
                    <li><a href="#">Test Historical</a></li>
                  </ul>
                </li>


                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Packages <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header"></li>
                    <li><a href="#">Package List</a></li>
                    <li><a href="#">Historical Package List</a></li>
                  </ul>
                </li>


                                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Patients <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header"></li>
                    <li><a href="addpatient.aspx" target="mainpage">Add Patient</a></li>
                    <li><a href="viewpatient.aspx" target="mainpage">List Patient</a></li>
                    <li><a href="#">View Reports</a></li>
                    <li><a href="#">View Historical Reports</a></li>
                    <li><a href="#">Make Payment</a></li>
                    <li><a href="#">Bills</a></li>
                  </ul>
                </li>


                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Lab Employees <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header"></li>
                    <li><a href="addemp.aspx">Add Employees</a></li>
                    <li><a href="#">List Employees</a></li>
                    <li><a href="#">View Old employees</a></li>
                    <li><a href="#">View my appointment</a></li>
                    <li><a href="#">Pending Tests</a></li>
                  </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Samples<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header"></li>
                    <li><a href="#">Sample Collection</a></li>
                    <li><a href="addsample.aspx">Sample Accession</a></li>
                </ul>
                </li>
                <li>
                    <a href="addrole.aspx">Roles</a>
                </li>

                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Appointments<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header"></li>
                    <li><a href="#">View Appointments</a></li>
                    <li><a href="#">Refferal Payment/Status</a></li>
                    <li><a href="#">Update Test Results</a></li>
                    <li><a href="#">Generate Report and bill</a></li>
                    <li><a href="#">Reject Report</a></li>
                    <li><a href="#">Allow lab report pending payment</a></li>
                  </ul>
                </li>

                  <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Referrals<span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="dropdown-header"></li>
                    <li><a href="addreferrals.aspx">Add Referrals</a></li>
                    <li><a href="#">Refferal List</a></li>
                    <li><a href="#">Settlement Details</a></li>
                  </ul>
                </li>
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper" style=" background-color: #FFFAFA">
            <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
    			<span class="hamb-middle"></span>
				<span class="hamb-bottom"></span>
            </button>
            <iframe name="mainpage" frameborder="0" width="100%" height="550" >
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                     <!-- sidebar Wrapper -->
                     <main class="page-content">   
                     <div class="container-fluid">
                     
                      </div>
                      </main>            
                    </div>
                </div>
            </div>
            </iframe>
        </div>


    </div>
    </form>
    
</body>

</html>
