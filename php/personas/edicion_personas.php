<?php
require_once('adebug.php');
/**
	*
	*/
class edicion_personas extends opertur_ci
{
	//-----------------------------------------------------------------------------------
	//---- Variables -------------------------------------------------------------------
	//-----------------------------------------------------------------------------------

	protected $sql_state;
	protected $s__datos;

	//-----------------------------------------------------------------------------------
  //---- form -------------------------------------------------------------------
	//---------------------------------------------------------
  //--------------------------
	function evt__form__modificacion($datos)
	{
		$this->s__datos['form'] = $datos;
	}

	function conf__form(opertur_ei_formulario $form)
	{
		if (isset($this->s__datos['form'])) {
			$form->set_datos($this->s__datos['form']);
		} else {
			if ($this->cn()->hay_cursor()) {
				$datos = $this->cn()->get_personas();
				$this->s__datos['form'] = $datos;
				$form->set_datos($datos);
			}
		}

	}
	//-----------------------------------------------------------------------------------
	//---- form_ml_telefono -------------------------------------------------------------------
	//---------------------------------------------------------
	//--------------------------
	function evt__form_ml_telefono__modificacion($datos)
	{
		$this->s__datos['form_ml_telefono'] = $datos;
	}

	function conf__form_ml_telefono(opertur_ei_formulario_ml $form_ml)
	{
		if (isset($this->s__datos['form_ml_telefono'])) {
			$form_ml->set_datos($this->s__datos['form_ml_telefono']);
		} else {
			if ($this->cn()->hay_cursor()) {
				$datos = $this->cn()->get_telefono();
				$this->s__datos['form_ml_telefono'] = $datos;
				$form_ml->set_datos($datos);
			}
		}

	}
	//-----------------------------------------------------------------------------------
	//---- form_ml_correo -------------------------------------------------------------------
	//---------------------------------------------------------
	//--------------------------
	function evt__form_ml_correo__modificacion($datos)
	{
		$this->s__datos['form_ml_correo'] = $datos;
	}

	function conf__form_ml_correo(opertur_ei_formulario_ml $form_ml)
	{
		if (isset($this->s__datos['form_ml_correo'])) {
			$form_ml->set_datos($this->s__datos['form_ml_correo']);
		} else {
			if ($this->cn()->hay_cursor()) {
				$datos = $this->cn()->get_correo();
				$this->s__datos['form_ml_correo'] = $datos;
				$form_ml->set_datos($datos);
			}
		}

	}

	//-----------------------------------------------------------------------------------
	//---- form_ml_domicilio -------------------------------------------------------------------
	//---------------------------------------------------------
	//--------------------------
	function evt__form_ml_domicilio__modificacion($datos)
	{
		$this->s__datos['form_ml_domicilio'] = $datos;
	}

	function conf__form_ml_domicilio(opertur_ei_formulario_ml $form_ml)
	{
		if (isset($this->s__datos['form_ml_domicilio'])) {
			$form_ml->set_datos($this->s__datos['form_ml_domicilio']);
		} else {
			if ($this->cn()->hay_cursor()) {
				$datos = $this->cn()->get_domicilio();
				$this->s__datos['form_ml_domicilio'] = $datos;
				$form_ml->set_datos($datos);
			}
		}

	}

	function setear_todos_los_formularios()
    {
      if (isset($this->s__datos['form'])) {
        $this->cn()->set_personas($this->s__datos['form']);
      }
			if (isset($this->s__datos['form_ml_telefono'])) {
        $this->cn()->procesar_filas_telefono($this->s__datos['form_ml_telefono']);
      }
			if (isset($this->s__datos['form_ml_correo'])) {
				$this->cn()->procesar_filas_correo($this->s__datos['form_ml_correo']);
			}
			if (isset($this->s__datos['form_ml_domicilio'])) {
				$this->cn()->procesar_filas_domicilio($this->s__datos['form_ml_domicilio']);
			}
    }
}

?>
