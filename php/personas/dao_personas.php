<?php

class dao_personas
{
  static function get_listado_personas($where='')
  {
    if($where){
      $where_armado="WHERE $where";
      }else {
        $where_armado="";
      }

      $sql ="SELECT * FROM
              personas
              $where_armado";
    $datos = consultar_fuente($sql);
    return $datos;

  }
}
?>
