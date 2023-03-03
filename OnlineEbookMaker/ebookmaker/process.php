<?php

if(isset($_POST['submit_data'])){
    require_once('config/db_connect.php');
    
    $title = mysqli_real_escape_string($con, $_POST['Article_title']);
    $content = mysqli_real_escape_string($con, $_POST['Article_content']);

    if(!empty($title) || !empty( $content)){

        $sql = "INSERT INTO ebook(Article_title,Article_content) VALUES('$title','$content');";
        $execute = mysqli_query($con,$sql);

        if(!$execute){
            echo "Failed to submit the data";
            exit();

        }else{
            header('refresh:3; url=dashboard.php');
            echo "E-book Published Successfully";
            exit();
        }

    }else{
        header('Location: dashboard.php?emptyFields');
        exit();
    }

}else{
    header('Location: dashboard.php?invalidRequest');
    exit();
}



?>