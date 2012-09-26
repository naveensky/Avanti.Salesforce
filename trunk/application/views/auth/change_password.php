<h3>Change Password</h3>

<?php if (!empty($message)): ?>
<div id="infoMessage" class="alert alert-error">
    <?php echo $message;?>
</div>

<?php endif; ?>

<?php echo form_open("auth/change_password");?>

      <p>Old Password<br />
      <?php echo form_input($old_password);?>
      </p>
      
      <p>New Password (at least <?php echo $min_password_length;?> characters long)<br />
      <?php echo form_input($new_password);?>
      </p>
      
      <p>Confirm New Password<br />
      <?php echo form_input($new_password_confirm);?>
      </p>
      
      <?php echo form_input($user_id);?>
      <p>
          <input type="submit" value="Update Password" class="btn">
      </p>
      
<?php echo form_close();?>
