<?php

  echo "<pre>";
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

  /*
  INSERT INTO form_submissions TABLE
  */
  $sql = 'INSERT INTO form_submissions (submission_fname,submission_lname,submission_form_type) VALUES (
      "'.$_POST['NameFirst'].'",
      "'.$_POST['NameLast'].'",
      "'.$_POST['form-type'].'"
  )';

  if ($conn->query($sql) === TRUE) {
    $submission_id = $conn->insert_id;
  } else {
    die("Error: " . $sql . "<br>" . $conn->error);
  }

  /*
  INSERT FORM DATA
  */
  $sql = '';
  foreach($_POST as $name => $val) {
    if($name != 'NameFirst' && $name != 'NameLast' && $name != 'form-type') {
      $sql .= 'INSERT INTO submission_data (name,value,submission) VALUES (
        "'.$name.'",
        "'.$val.'",
        '.$submission_id.'
      );';
    }
  }

  if ($conn->multi_query($sql) === TRUE) {
    $submission_id = $conn->insert_id;
  } else {
    die("Error: " . $sql . "<br>" . $conn->error);
  }

  echo $sql;
  print_r($_POST);


  echo "</pre>";
