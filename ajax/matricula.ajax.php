<?php

require_once "../controladores/matricula.controlador.php";
require_once "../modelos/matricula.modelo.php";

class AjaxMatriculas{

	/*=============================================
	EDITAR USUARIO
	=============================================*/	
	/*=============================================
	ACTIVAR USUARIO
	=============================================*/	


	/*=============================================
	VALIDAR NO REPETIR DNI PERSONA
	=============================================*/	

	public $validarValor;
	public $item;
	public $tabla;

	public function ajaxvalidarValor(){

		$itemC = $this->item;
		$valor = $this->validarValor;
		$tabla = $this->tabla;

		$respuesta = ControladorMatricula::ctrConsultar($tabla,$itemC, $valor);

		echo json_encode($respuesta);

	}
}

/*=============================================
EDITAR USUARIO
=============================================*/


/*=============================================
VALIDAR NO REPETIR USUARIO
=============================================*/

if(isset( $_POST["validarValor"])){

	$valDni = new AjaxMatriculas();
	$valDni -> validarValor = $_POST["validarValor"];
	$valDni -> item = $_POST["item"];
	$valDni -> tabla = $_POST["tabla"];
	$valDni -> ajaxvalidarValor();

}