<?php
include("setting.php");
$name=$_POST['name'];
$email=$_POST['email'];


$aid=$_POST['aid'];
$pas=sha1($_POST['pass']);
if($name==NULL || $email==NULL || $aid==NULL || $_POST['pass']==NULL)
{
	//
}
else
{
	$sql=mysqli_query($set,"INSERT INTO authors(aid,name,password,email) VALUES('$aid','$name','$pas','$email')");
	if($sql)
	{
		$msg="Successfully Registered";
	}
	else
	{
		$msg="User Already Exists";
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
  background-image: url('images/n.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:cover;
}
</style>
</head>

<body>
<div id="banner">
<span class="head"><center>Online E-Book Maker</center></span><br />
<marquee class="clg" direction="right" behavior="alternate" scrollamount="1">Create E-Books For Free!!</marquee>
</div>
<br />

<div align="center">
<div id="wrapper">
<br />
<br />

<span class="SubHead">Author's Registration</span>
<br />
<br />
<form method="post" action="">
<table border="0" cellpadding="4" cellspacing="4" class="table">
<tr><td colspan="2" align="center" class="msg"><?php echo $msg;?></td></tr>
<tr><td class="labels">Name : </td><td><input type="text" name="name" class="fields" placeholder="Enter Full name" required="required" size="25" /></td></tr>
<tr><td class="labels">Email ID : </td><td><input type="email" name="email" class="fields" placeholder="Enter Email ID" required="required" size="25" /></td></tr>
<tr><td class="labels">Author ID : </td><td><input type="text" name="aid" class="fields" placeholder="Enter Author ID" required="required" size="25" /></td></tr>
<tr><td class="labels">Password : </td><td><input type="password" name="pass" class="fields" placeholder="Enter Password" required="required" size="25" /></td></tr>
<tr><td colspan="2" align="center"><input type="submit" value="Register" class="fields" /></td></tr>
</table>
</form><br />
<br />
<a href="index.php" class="link">Go Back</a>
<br />
<br />

</div>
</div>
</body>
</html>