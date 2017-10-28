<?php
class dt_tipo_correo extends toba_datos_tabla
{
	function get_listado()
	{
		$sql = "SELECT
			t_tc.id_tipo_correo,
			t_tc.nombre_tipo_correo
		FROM
			tipo_correo as t_tc
		ORDER BY nombre_tipo_correo";
		return toba::db('opertur')->consultar($sql);
	}


}
?>