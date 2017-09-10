<?php
header('Content-Type: application/json');
require_once('results.php');
echo json_encode( array_values($submissions) );
