<!DOCTYPE html>
<html>
<head>
    <title><?php echo $template['title']; ?></title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700|Open+Sans:700italic,400,700'
          rel='stylesheet' type='text/css'>

    <link rel="shortcut icon" href="<?php echo base_url("/assets/img/favicon.ico"); ?>" />

    <link rel="stylesheet" href="<?php echo base_url("/assets/css/bootstrap.min.css") ?>"/>
    <link rel="stylesheet" href="<?php echo base_url("/assets/css/bootstrap-responsive.min.css") ?>"/>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url("/assets/css/font.css")?>"/>

    <link rel="stylesheet" href="<?php echo base_url("/assets/css/main.css") ?>"/>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.1/jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url("/assets/js/bootstrap.min.js") ?>"></script>
</head>
<body>

<div id="header" class="container">
    <div class="row">
        <div class="span4">
            <h1><a href="<?php echo base_url("/"); ?>"><img src="<?php echo base_url("/assets/img/avanti-logo.png"); ?>"></a></h1>
        </div>
        <div class="main_menu span8" style="text-align: right; margin-top: 66px; position: relative;">
            <?php if (is_logged_in()) : ?>
            <a href="<?php echo base_url("/auth/change_password") ?>">Change Password</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="<?php echo base_url("/auth/logout") ?>">Log Out</a>
            <?php else: ?>
            <a href="<?php echo base_url("/auth/login") ?>">Log In</a>
            <?php endif; ?>
        </div>
    </div>
</div>
<hr style="margin: 0px;"/>
<div id="main" class="container">
    <?php echo $template['body']; ?>
</div>
<hr/>
<div id="footer" class="container">
    <div class="row">
        <div class="span6">
            <small> &copy; <a href="http://avantifellows.org">Avanti Fellows</a></small>
        </div>
        <div class="span6" style="text-align: right">
            <small><a href="http://greenapplesolutions.com">Green Apple Solutions</a></small>
        </div>
    </div>
</div>
</body>
</html>