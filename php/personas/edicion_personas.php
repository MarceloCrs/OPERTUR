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

  function setear_todos_los_formularios()
    {
      if (isset($this->s__datos['form'])) {
        $this->cn()->set_personas($this->s__datos['form']);
      }

    }
}

?>
