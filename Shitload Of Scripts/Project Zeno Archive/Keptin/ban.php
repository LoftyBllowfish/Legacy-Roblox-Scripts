<?php

    //Connect to the database
    $host = "127.0.0.1";
    $user = "grubsteak";                     //Your Cloud 9 username
    $pass = "";                                 //Remember, there is NO password by default!
    $db = "bans";                          //Your database name you want to connect to
    $port = 3306;                               //The port #. It is always 3306

    $connection = mysqli_connect($host, $user, $pass, $db, $port)or die(mysql_error());


    if($_GET["id"])
    {
    $query = "INSERT INTO banned (id, bantype) VALUES (" . $_GET["id"] . ", " . $_GET["bantype"] . ")";
    echo mysqli_query($connection, $query);
    echo $query . "<br />";
    echo $_GET["id"] . ", " . $_GET["bantype"] . "<br />";
    echo "success";
    }
    else
    {
    echo "error";
    }

?>