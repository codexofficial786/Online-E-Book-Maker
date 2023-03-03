<?php
include("setting.php");
session_start();
if(isset($_SESSION['aid']))
{
	header("location:home.php");
}
$aid=mysqli_real_escape_string($set,$_POST['aid']);
$pass=mysqli_real_escape_string($set,$_POST['pass']);

if($aid==NULL || $_POST['pass']==NULL)
{
	//
}
else
{
	$p=sha1($pass);
	$sql=mysqli_query($set,"SELECT * FROM authors WHERE aid='$aid' AND password='$p'");
	if(mysqli_num_rows($sql)==1)
	{
		$_SESSION['aid']=$_POST['aid'];
		header("location:home.php");
	}
	else
	{
		$msg="Incorrect Details";
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online E-Book Maker</title>
<link href="stylesheet.css" rel="stylesheet" type="text/css" />
<style>
body {
  background-image: url('images/p.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:cover;
}
</style>
</head>

<body>
<div id="banner">
<span class="head"><center>Online E-book Maker</center></span><br />
<marquee class="clg" direction="right" behavior="alternate" scrollamount="1">Create E-Books For Free!!</marquee>
</div>
<br />

<div align="center">
<div id="wrapper">
<br />
<br />

<span class="SubHead">Author Sign In</span>
<br />
<br />
<form method="post" action="">
<table border="0" cellpadding="4" cellspacing="4" class="table">
<tr><td colspan="2" align="center" class="msg"><?php echo $msg;?></td></tr>
<tr><td class="labels">Author ID : </td><td><input type="text" name="aid" class="fields" size="25" placeholder="Enter Author ID" required="required" /></td></tr>
<tr><td class="labels">Password : </td><td><input type="password" name="pass" class="fields" size="25" placeholder="Enter Password" required="required" /></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Sign In" class="fields" /></td></tr>
</table>
</form>
<br />
<br />
<a href="register.php" class="link">New user(Sign Up)</a>
<br />
<a href="admin.php" class="link">Admin Sign In</a>

<br />
<br />

</div>
</div>
</body>
</html>