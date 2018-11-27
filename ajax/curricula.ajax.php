<?php

require_once "../controladores/curricula.controlador.php";
require_once "../modelos/curricula.modelo.php";

class AjaxCurricula{

	/*=============================================
	EDITAR USUARIO
	=============================================*/	
    public $estadoTabla;
	public $idTabla;
	public $tabla;
    
	public function ajaxEditarTabla(){

		$item = "id";
		$valor = $this->idTabla;
		$tabla = $this->tabla;

		$respuesta = ControladorCurricula::ctrMostrarCurricula($tabla,$item, $valor);

		echo json_encode($respuesta);

	}
    
    public function ajaxEditarTablaG(){

		$item = "id";
		$valor = $this->idTabla;
		$tabla = $this->tabla;

		$respuesta = ControladorCurricula::ctrMostrarGrupos($tabla,"ambiente","periodo","seccion","grado","nivel",$item, $valor);

		echo json_encode($respuesta);

	}

	/*=============================================
	ACTIVAR ESTADO
	=============================================*/	

	public function ajaxActivarEstado(){

		$tabla = $this->tabla;

		$item1 = "estado";
		$valor1 = $this->estadoTabla;

		$item2 = "id";
		$valor2 = $this->idTabla;

		$respuesta = ModeloCurricula::mdlActualizarEstado($tabla, $item1, $valor1, $item2, $valor2);

	}

  }

    /*=============================================
    EDITAR TABLA
    =============================================*/
    if(isset($_POST["idTabla"])){

        $editar = new AjaxCurricula();
        $editar -> idTabla = $_POST["idTabla"];
        $editar -> tabla = $_POST["tabla"];
        $editar -> ajaxEditarTabla();

    }

    if(isset($_POST["idTablaG"])){

        $editar = new AjaxCurricula();
        $editar -> idTabla = $_POST["idTablaG"];
        $editar -> tabla = $_POST["tablaG"];
        $editar -> ajaxEditarTablaG();

    }

    /*=============================================
    ACTIVAR ESTADO
    =============================================*/	

    if(isset($_POST["estadoTabla"])){

        $activarEstado = new AjaxCurricula();
        $activarEstado -> tabla = $_POST["tabla"];
        $activarEstado -> idTabla = $_POST["idTabla"];
        $activarEstado -> estadoTabla = $_POST["estadoTabla"];
        $activarEstado -> ajaxActivarEstado();

    }

