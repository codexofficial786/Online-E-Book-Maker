<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-book content</title>
    <link rel="stylesheet" href="css/style.css">
   <style>
    body {
  background-image: url('image/g.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:cover;
}
</style>
</head>
<body>

<?php

if(isset($_GET['id'])){
    require_once('config/db_connect.php');

    $auth_id = mysqli_real_escape_string($con,$_GET['id']);
    $sql = "SELECT * FROM ebook WHERE id= $auth_id";
    $execute = mysqli_query($con,$sql);
    $post = mysqli_fetch_assoc($execute);

    if($auth_id != $post['id']){
        header('refresh:3; url=index.php');
        echo "That id does not exist on our server";
        exit();
    }

}else{
    header('Location: index.php');
    exit();
}

?>

<div class="container">

<h1><?php echo $post['Article_title']; ?></h1>

<div class="content">
    <?php echo $post['Article_content']; ?>
</div>

</div>
</body>
</html>