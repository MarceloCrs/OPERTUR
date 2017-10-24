<?php
class dt_empresa_tel extends toba_datos_tabla
{
	function get_listado()
	{
		$sql = "SELECT
			t_et.id_empresa_tel,
			t_et.nombre_empresa_tel
		FROM
			empresa_tel as t_et
		ORDER BY nombre_empresa_tel";
		return toba::db('opertur')->consultar($sql);
	}


}
?>