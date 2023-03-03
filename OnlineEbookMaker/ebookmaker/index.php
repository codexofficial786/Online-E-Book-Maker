<?php 

require_once('config/db_connect.php');
$sql = "SELECT * FROM ebook ORDER BY id DESC;";
$execute = mysqli_query($con,$sql);
$Postdata = mysqli_num_rows($execute);

?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Created E-books</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
body {
  background-image: url('image/f.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:cover;
}
</style>
</head>
<body>
 
<div class="container">
<?php

if($Postdata > 0){
    while($row = mysqli_fetch_array($execute)){ 
    $timestamp = $row['Date_published'];
    $date = date('dS M Y', strtotime($timestamp));
    $time = date('h:i A', strtotime($timestamp));
    ?>


<h1><a href="details.php?id=<?php echo $row['id']; ?>"><?php echo $row['Article_title'] ?></a></h1>
<span>Published on <?php echo $date; ?> At: <?php echo $time; ?></span>


<?php
    }
}

?>

</body>
</html>