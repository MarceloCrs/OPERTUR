<?php
class dt_domicilio extends toba_datos_tabla
{
	function get_listado()
	{
		$sql = "SELECT
			t_d.id_domicilio,
			t_p.nombre as id_persona_nombre,
			t_l.nombre_locali as id_localidad_nombre,
			t_d.calle,
			t_d.piso,
			t_d.dpto,
			t_d.monoblock,
			t_d.nro
		FROM
			domicilio as t_d,
			personas as t_p,
			localidades as t_l
		WHERE
				t_d.id_persona = t_p.id_persona
			AND  t_d.id_localidad = t_l.id_localidad
		ORDER BY calle";
		return toba::db('opertur')->consultar($sql);
	}

}

?>