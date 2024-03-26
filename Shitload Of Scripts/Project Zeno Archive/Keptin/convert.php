 <?php
 imagepng(imagecreatefromstring(file_get_contents(urldecode($_GET["link"]))));
 
 ?>