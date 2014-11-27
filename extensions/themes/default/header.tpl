<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>{{$appTitle}}</title>

        <!-- Bootstrap core CSS -->
        <link href="{{$themepath}}css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="{{$themepath}}css/styles.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style type="text/css">
            .dropdown-submenu{position:relative;}
            .dropdown-submenu>.dropdown-menu{top:0;left:100%;margin-top:-6px;margin-left:-1px;-webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;}
            /*.dropdown-submenu:hover>.dropdown-menu{display:block;}*/
            .dropdown-submenu>a:after{display:block;content:" ";float:right;width:0;height:0;border-color:transparent;border-style:solid;border-width:5px 0 5px 5px;border-left-color:#cccccc;margin-top:5px;margin-right:-10px;}
            .dropdown-submenu:hover>a:after{border-left-color:#ffffff;}
            .dropdown-submenu.pull-left{float:none;}.dropdown-submenu.pull-left>.dropdown-menu{left:-100%;margin-left:10px;-webkit-border-radius:6px 0 6px 6px;-moz-border-radius:6px 0 6px 6px;border-radius:6px 0 6px 6px;}
            .dropdown-menu.custom-colors{ border-top: 14px solid #5bc0de; border-right: 1px solid #5bc0de; border-bottom: 3px solid #5bc0de; border-left: 1px solid #5bc0de;}
            .padding-left-ten-px { padding-left: 10px; }
            .red-text { color: #FF0000; }
            .twitter-blue { color: #1ec7fe; }
            .facebook-blue { color: #3c599f; }
            .linkedin-blue { color: #0080b2; }
            .nav-bottom-border { border-bottom: solid 5px #5bc0de; } /*CHANGE THE NAVBAR BOTTOM COLOR*/
            .navbar-right{padding-right: 25px;}
            .form-group{padding: 10px;}
            .form-panel-width { width: 220px; }/*YOU CAN MAKE PANEL AS WIDE AS NEEDED*/
            .color-blue {color: #0080c5;}
            .color-red {color: #FF0000;}
            .error-message {font-size: 10px;}
        </style>
    </head>

    <body>

        <!-- Fixed navbar -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.php">Project name</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                    @if ($logged_in == 'yes'):
                    <ul class="nav navbar-right navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-header">User-Options</li>
                                <li><a href="profile.php?user={{$username}}">Profile</a></li>
                                <li><a href="profile_edit.php">Edit Profile</a></li>
                                <li><a href="changepassword.php">Change Password</a></li>
                                <li class="divider"></li>
                                <li><a href="logout.php">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                    @if ($is_admin == 'yes'):
                    <ul class="nav navbar-right navbar-nav">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class="glyphicon glyphicon-dashboard" aria-hidden="true"></span> <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="dropdown-header">Admin-Options</li>
                                <li><a href="logout.php">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                    @endif
                    @else:
                    <!-- DROPDOWN LOGIN STARTS HERE  -->
                    <ul id="signInDropdown" class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <button type="button" id="dropdownMenu1" data-toggle="dropdown" class="btn btn-info navbar-btn dropdown-toggle"><i class="glyphicon glyphicon-user"></i> Login <span class="caret"></span></button>
                            <ul class="dropdown-menu custom-colors">
                                <li style="width: 260px;">
                                    <form class="navbar-form form" role="form" action="login.php" method="POST">
                                        <div class="form-group">
                                            <h1 style="font-size: 22px; font-family: Segoe,Aria,sans-serif; text-align: center; margin-top: 0px; padding-bottom: 10px; font-weight: bold; color: #428BCA;">USER LOGIN</h1>
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                                <!--EMAIL ADDRESS-->
                                                <input id="username" name="username" placeholder="Username" class="form-control" type="text" required="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock color-blue"></i></span>
                                                <!--PASSWORD-->
                                                <input id="password" name="password" placeholder="Password" class="form-control" type="password" required="">
                                            </div>
                                        </div>
                                        <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
                                        <div class="form-group">
                                            <!--BUTTON-->
                                            <button type="submit" class="btn btn-primary form-control">Login</button>
                                        </div>
                                        <div class="form-group">
                                            <!--RESET PASSWORD LINK-->
                                            <span class="pull-right"><a href="#">Forgot Password?</a></span>
                                        </div>
                                    </form>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <!-- DROPDOWN LOGIN ENDS HERE  -->
                    @endif

                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-8">