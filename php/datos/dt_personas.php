<?php
class dt_personas extends toba_datos_tabla
{
	function get_descripciones()
	{
		$sql = "SELECT id_persona, nombre FROM personas ORDER BY nombre";
		return toba::db('opertur')->consultar($sql);
	}

}

?>