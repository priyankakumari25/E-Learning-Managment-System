 <?php
 include('dbcon.php');
 include('session.php');
 $new_password  = mysqli_real_escape_string($conn ,$_POST['new_password']);
 $password=password_hash($new_password, PASSWORD_BCRYPT);
 mysqli_query($conn,"update student set password = '$new_password' where student_id = '$session_id'")or die(mysqli_error());
 ?>