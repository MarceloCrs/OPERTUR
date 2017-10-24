<?php
class dt_tipo_telefono extends toba_datos_tabla
{
	function get_listado()
	{
		$sql = "SELECT
			t_tt.id_tipo_telefono,
			t_tt.nombre_tipo_tel
		FROM
			tipo_telefono as t_tt
		ORDER BY nombre_tipo_tel";
		return toba::db('opertur')->consultar($sql);
	}


}
?>