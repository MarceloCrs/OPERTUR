<?php
class dt_localidades extends toba_datos_tabla
{
	function get_descripciones()
	{
		$sql = "SELECT id_localidad, nombre_locali FROM localidades ORDER BY nombre_locali";
		return toba::db('opertur')->consultar($sql);
	}

	function get_listado()
	{
		$sql = "SELECT
			t_l.id_localidad,
			t_l.nombre_locali,
			t_p.nombre_provincia as id_provincia_nombre
		FROM
			localidades as t_l,
			provincias as t_p
		WHERE
				t_l.id_provincia = t_p.id_provincia
		ORDER BY nombre_locali";
		return toba::db('opertur')->consultar($sql);
	}

}
?>