<?php
class dt_rol extends toba_datos_tabla
{
	function get_descripciones()
	{
		$sql = "SELECT id_rol, nombre_rol FROM rol ORDER BY nombre_rol";
		return toba::db('opertur')->consultar($sql);
	}

	function get_listado()
	{
		$sql = "SELECT
			t_r.id_rol,
			t_r.nombre_rol
		FROM
			rol as t_r
		ORDER BY nombre_rol";
		return toba::db('opertur')->consultar($sql);
	}


}
?>