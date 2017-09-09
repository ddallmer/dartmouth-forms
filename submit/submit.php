<?php
  echo "<pre>";
  require_once('../inc/conn.php');

  /*
  INSERT INTO form_submissions TABLE
  */
  $sql = 'INSERT INTO form_submissions (submission_fname,submission_lname,submission_form_type) VALUES (
      "'.$conn->real_escape_string( $_POST['NameFirst'] ).'",
      "'.$conn->real_escape_string( $_POST['NameLast'] ).'",
      "'.$conn->real_escape_string( $_POST['form-type'] ).'"
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
        "'.$conn->real_escape_string($name).'",
        "'.$conn->real_escape_string($val).'",
        '.$submission_id.'
      );';
    }
  }

  if ($conn->multi_query($sql) !== TRUE) {
    die("Error: " . $sql . "<br>" . $conn->error);
  }
