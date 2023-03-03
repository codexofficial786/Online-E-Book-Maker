<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-book Maker</title>
    <link rel="stylesheet" href="css/style.css">
 
    
</head>

<style>
body {
  background-image: url('image/c.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size:cover;
}
</style>
    
<div class="container">
    <form action="process.php" method="POST">

    <div class="input-field">
        <label for="title">Enter title of your E-book</label>
        <input type="text" name="Article_title" id="title" autocomplete="off">
    </div>

    <textarea name="Article_content" id="Article_editor"></textarea>

    <input type="submit" class="publish-btn" name="submit_data" value="Publish E-book">
</form>


<a href="index.php" target="_blank">Preview Created E-books</a>
</div>
<script src="ckeditor/ckeditor.js"></script>
<script>
    CKEDITOR.replace("Article_editor");
    
</script>


</body>
</html>