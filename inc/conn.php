<?php
/*
DATABASE CONNECTION
*/
$servername = "localhost";
$username = "dartmouth_forms";
$password = "abcdefg";
$dbname = "dartmouth_forms";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
