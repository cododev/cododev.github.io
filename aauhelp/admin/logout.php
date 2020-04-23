<?php
session_start();
$_SESSION['alogin']=="";
session_unset();
//session_destroy();
$_SESSION['errmsg']="You have successfully logout as an ADMIN";
?>
<script language="javascript">
document.location="index.php";
</script>
