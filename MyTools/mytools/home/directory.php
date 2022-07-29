List of file/directories: 
<br>
<? 
    $path = "d:/xampplite/htdocs/webbasic/"; 
    $dir_handle = @opendir($path) or die("Unable to open $path"); 
    while ($file = readdir($dir_handle)) { 
    if($file == "." || $file == ".." || $file == "index.php" ) 
        continue; 
        echo "<a href=\"$file\">$file</a><br />"; 
    } 
    closedir($dir_handle); 
?> 


