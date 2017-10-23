<?php
class dt_localidades extends toba_datos_tabla
{
	function get_descripciones()
	{
		$sql = "SELECT id_localidad, nombre_locali FROM localidades ORDER BY nombre_locali";
		return toba::db('opertur')->consultar($sql);
	}

}

?>