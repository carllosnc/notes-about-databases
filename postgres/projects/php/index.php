<?php
  declare(strict_types=1);
  require __DIR__ . '/vendor/autoload.php';
 
  $db_handle = new \App\Database\Connection();

  echo pg_dbname($db_handle->getDB());
