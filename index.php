<?php

require_once "controladores/plantilla.controlador.php";
require_once "controladores/usuarios.controlador.php";
require_once "controladores/curricula.controlador.php";
require_once "controladores/discapacidades.controlador.php";

require_once "controladores/matricula.controlador.php";

require_once "modelos/usuarios.modelo.php";
require_once "modelos/discapacidades.modelo.php";
require_once "modelos/curricula.modelo.php";
require_once "modelos/matricula.modelo.php";

$plantilla = new ControladorPlantilla();
$plantilla -> ctrPlantilla();