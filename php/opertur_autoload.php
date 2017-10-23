<?php
/**
 * Esta clase fue y será generada automáticamente. NO EDITAR A MANO.
 * @ignore
 */
class opertur_autoload 
{
	static function existe_clase($nombre)
	{
		return isset(self::$clases[$nombre]);
	}

	static function cargar($nombre)
	{
		if (self::existe_clase($nombre)) { 
			 require_once(dirname(__FILE__) .'/'. self::$clases[$nombre]); 
		}
	}

	static protected $clases = array(
		'opertur_ci' => 'extension_toba/componentes/opertur_ci.php',
		'opertur_cn' => 'extension_toba/componentes/opertur_cn.php',
		'opertur_datos_relacion' => 'extension_toba/componentes/opertur_datos_relacion.php',
		'opertur_datos_tabla' => 'extension_toba/componentes/opertur_datos_tabla.php',
		'opertur_ei_arbol' => 'extension_toba/componentes/opertur_ei_arbol.php',
		'opertur_ei_archivos' => 'extension_toba/componentes/opertur_ei_archivos.php',
		'opertur_ei_calendario' => 'extension_toba/componentes/opertur_ei_calendario.php',
		'opertur_ei_codigo' => 'extension_toba/componentes/opertur_ei_codigo.php',
		'opertur_ei_cuadro' => 'extension_toba/componentes/opertur_ei_cuadro.php',
		'opertur_ei_esquema' => 'extension_toba/componentes/opertur_ei_esquema.php',
		'opertur_ei_filtro' => 'extension_toba/componentes/opertur_ei_filtro.php',
		'opertur_ei_firma' => 'extension_toba/componentes/opertur_ei_firma.php',
		'opertur_ei_formulario' => 'extension_toba/componentes/opertur_ei_formulario.php',
		'opertur_ei_formulario_ml' => 'extension_toba/componentes/opertur_ei_formulario_ml.php',
		'opertur_ei_grafico' => 'extension_toba/componentes/opertur_ei_grafico.php',
		'opertur_ei_mapa' => 'extension_toba/componentes/opertur_ei_mapa.php',
		'opertur_servicio_web' => 'extension_toba/componentes/opertur_servicio_web.php',
		'opertur_comando' => 'extension_toba/opertur_comando.php',
		'opertur_modelo' => 'extension_toba/opertur_modelo.php',
	);
}
?>