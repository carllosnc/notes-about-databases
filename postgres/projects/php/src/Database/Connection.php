<?php namespace App\Database;

class Connection  {
  private $pg;

  function __construct()
  {

    $this->pg = \pg_connect('host=localhost dbname=phpex1 user=dev password=/77pkh4rdcore');
  }

  function getDB(){
    return $this->pg;
  }
}
