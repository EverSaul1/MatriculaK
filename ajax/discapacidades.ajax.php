<?php

require_once "../controladores/discapacidades.controlador.php";
require_once "../modelos/discapacidades.modelo.php";

class AjaxDiscapacidades{

	

	public $idDiscapacidad;

	public function ajaxEditarDiscapacidad(){

		$item = "id_discapacidad";
		$valor = $this->idDiscapacidad;

		$respuesta = ControladorDiscapacidades::ctrMostrarDiscapacidades($item, $valor);

		echo json_encode($respuesta);

	}
}


if(isset($_POST["idDiscapacidad"])){

	$discapacidad = new AjaxDiscapacidades();
	$discapacidad -> idDiscapacidad = $_POST["idDiscapacidad"];
	$discapacidad -> ajaxEditarDiscapacidad();
}