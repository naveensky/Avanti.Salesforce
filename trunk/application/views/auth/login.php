<h3 class="theme_font">Login</h3>
<p>Please login with your email/username and password below.</p>

<?php if (!empty($message)): ?>
<div id="infoMessage" class="alert alert-error">
    <?php echo $message;?>
</div>

<?php endif; ?>

<?php echo form_open("auth/login"); ?>

<p>
    <label for="identity">Email</label>
    <?php echo form_input($identity);?>
</p>

<p>
<!--    <label for="password">Password</label>-->
<!--    --><?php //echo form_input($password);?>
     <input type="hidden" name="password" value="asdf1234"/>
</p>

<p>
    <label for="remember">Remember Me</label>
    <?php echo form_checkbox('remember', '1', FALSE, 'id="remember"');?>
</p>

<p>
    <input type="submit" value="Login" class="btn">
</p>

<?php echo form_close(); ?>

<p><a href="forgot_password">Forgot your password?</a></p>