<?php
header('Content-Type: application/json');
require_once('../inc/conn.php');

/*
SELECT query
*/
$sql = "
  SELECT *
  FROM form_submissions, submission_data
  WHERE submission_data.submission = form_submissions.submission_ID
  ORDER BY submission_form_type, submission_time, submission_data.id";
$result = $conn->query($sql);

/*
COMPILE RESULTS
*/
$submissions = [];
if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $submissions[$row['submission_ID']]['index'] = $row['submission_form_type'];
    $submissions[$row['submission_ID']]['name'] = $row['submission_fname'].' '.$row['submission_lname'];
    $submissions[$row['submission_ID']][$row['name']] = $row['value'];
  }
}

echo json_encode( array_values($submissions) );
