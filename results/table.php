<!DOCTYPE HTML>
<html>
<head>
  <title>Results Table</title>
    <style type="text/css">
      td {
        font-family: monospace;
        padding: 10px 5px;
      }
    </style>
  </head>
  <body>
<?php
require_once('results.php');
foreach ($submissions as $row) { ?>
  <table>
<?php foreach($row as $k => $v) { ?>
    <tr>
      <td><strong><?=$k?></strong></td>
      <td><?=$v?></td>
    </tr>
<?php } ?>
  </table>
  <hr>
<?php } ?>
  </body>
</html>
