<?php
/*
DATABASE CONNECTION
*/
$servername = "localhost";
$username = "mydartmo_forms";
$password = "Q;sco~ey9Iw-";
$dbname = "mydartmo_forms";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
