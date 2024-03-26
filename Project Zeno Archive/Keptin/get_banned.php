<?php

    //Connect to the database
    $host = "127.0.0.1";
    $user = "grubsteak";                     //Your Cloud 9 username
    $pass = "";                                 //Remember, there is NO password by default!
    $db = "bans";                          //Your database name you want to connect to
    $port = 3306;                               //The port #. It is always 3306

    $connection = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());



    //And now to perform a simple query to make sure it's working
    $query = "SELECT * FROM banned";
    $result = mysqli_query($connection, $query);

    $str = "[";
    while ($row = mysqli_fetch_assoc($result)) {  //ghetto json - hey, I just started to use this!
        $str = $str . '{"id":' . $row['id'] . ',"bantype":' . $row['bantype'] . '},';
    }
    $str = rtrim($str, ",");
    $str = $str . "]";
    echo $str;
    

?>