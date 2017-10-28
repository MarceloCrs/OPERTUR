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

  static function get_tipotelefono($id_tipo_telefono)
  {
    $id_tipo_telefono = quote($id_tipo_telefono);

    $sql = "SELECT nombre_tipo_tel
            from tipo_telefono
            WHERE id_tipo_telefono = $id_tipo_telefono";

    $resultado = consultar_fuente($sql);

    if (count($resultado) > 0 ){
      return $resultado[0]['nombre_tipo_tel'];
    } else {
      return 'Falló, intente nuevamente';
    }
  }

  static function get_empresatelefonica($id_empresa_tel)
  {
    $id_empresa_tel = quote($id_empresa_tel);

    $sql = "SELECT nombre_empresa_tel
            from empresa_tel
            WHERE id_empresa_tel = $id_empresa_tel";

    $resultado = consultar_fuente($sql);

    if (count($resultado) > 0 ){
      return $resultado[0]['nombre_empresa_tel'];
    } else {
      return 'Falló, intente nuevamente';
    }
  }
  //-----
  static function get_tipocorreo($id_tipo_correo)
  {
    $id_tipo_correo = quote($id_tipo_correo);

    $sql = "SELECT nombre_tipo_correo
            from tipo_correo
            WHERE id_tipo_correo = $id_tipo_correo";

    $resultado = consultar_fuente($sql);

    if (count($resultado) > 0 ){
      return $resultado[0]['nombre_tipo_correo'];
    } else {
      return 'Falló, intente nuevamente';
    }
  }
}
?>
