<?php

  class ControladorMatricula{
       
  /*--=====================================
    MOSTRAR DATOS
  ======================================*/
  static public function ctrConsultar($tabla,$item, $valor){
        
    $respuesta = ModeloMatricula::mdlConsultar($tabla, $item, $valor);

    return $respuesta;
	
  }
 /*--=====================================
    ELIMINAR DATOS POR ITEM
  ======================================*/ 
      
  static public function ctrEliminarByItem(){

    if(isset($_GET["idTabla"])){

        $item = $_GET["itemTabla"];
        $valor = $_GET["valorTabla"];
        $tabla = $_GET["t"];

        $respuesta = ModeloMatricula::mdlEliminarByItem($tabla, $item, $valor);

        if($respuesta == "ok"){

          echo'<script>

            swal({
              type: "success",
              title: "El '.$tabla.' ha sido eliminado correctamente",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                    window.location = "'.$tabla.'s";

                }
              })

          </script>';
        }else{
                    
          echo'<script>

            swal({
              type: "error",
              title: "¡El '.$tabla.' no puede ser eliminado!",
              text: "Asegurese de eliminarlo tambien en otros vistas ",
              showConfirmButton: true,
              confirmButtonText: "Cerrar",
              closeOnConfirm: false
              }).then((result) => {
                if (result.value) {
                    window.location = "'.$tabla.'s";
                    }
                })

           </script>';

        }
      }
		
	}
         
  /*--=====================================
    REGISTRAR PERIODOS
  ======================================*/    
  static public function ctrCrearPersona(){

    if(isset($_POST["dniP"])){

        if(preg_match('/^[0-9]+$/', $_POST["dniP"]) && preg_match('/^[0-9]+$/', $_POST["ubgeoP"])
        && preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nombresP"])&&
           preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["apellidoPP"])&&
           preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["apellidoMP"])&&
           preg_match('/^[a-zA-Z0-9]+$/', $_POST["tipoPersonaP"])&&
           preg_match('/^[a-zA-Z0-9]+$/', $_POST["sexoP"])
          
          ){

            $tabla = "persona";

            $datos = array("dni"=>$_POST["dniP"],
                "nombres"=>$_POST["nombresP"],
                "apeP"=>$_POST["apellidoPP"],
                "apeM"=>$_POST["apellidoMP"],
                "fechaN"=>$_POST["fNP"],
                "tipoPe"=>$_POST["tipoPersonaP"],
                "sexo"=>$_POST["sexoP"],
                "padre"=>$_POST["padreP"],
                "madre"=>$_POST["madreP"],
                "lengua"=>$_POST["lenguaMP"],
                "lugar"=>$_POST["lugarHP"],
                "tipoP"=>$_POST["tipoPP"],
                "complicaciones"=>$_POST["complicacionPP"],
                "ubigeo"=>$_POST["ubgeoP"]); 
            
            $respuesta = ModeloMatricula::mdlIngresarPersona($tabla, $datos);

            if($respuesta == "ok"){

                echo'<script>

                swal({
                  type: "success",
                  title: "La Persona ha sido guardada correctamente",
                  showConfirmButton: true,
                  confirmButtonText: "Cerrar",
                  closeOnConfirm: false
                  }).then((result) => {
                    if (result.value) {

                        window.location = "matriculas";

                    }
                })

                </script>';

            }else{

           echo'<script>

            swal({
              type: "error",
              title: "¡Asegurese de ingresar los datos correctamente!",
              text: "Verifique que el ubigeo exista",
              showConfirmButton: true,
              confirmButtonText: "Cerrar",
              closeOnConfirm: false
              }).then((result) => {
                if (result.value) {
                
                window.location = "matriculas";
                
                    }
                })

           </script>';

        }


        }else{

            echo'<script>

            swal({
              type: "error",
              title: "¡Asegurese de ingresar los datos correctamente!",
              text: "Probablemente se deba a un tipo de dato incorrecto",
              showConfirmButton: true,
              confirmButtonText: "Cerrar",
              closeOnConfirm: false
              }).then((result) => {
                if (result.value) {
                
                window.location = "matriculas";
                
                    }
                })

           </script>';

        }

    }

  }
      
  /*--=====================================
    MOSTRAR PADRES
  ======================================*/
  static public function ctrConsultarPadres($tabla1,$tabla2,$item1, $valor1,$item2, $valor2){
        
    $respuesta = ModeloMatricula::mdlConsultarPadres($tabla1,$tabla2,$item1, $valor1,$item2, $valor2);

    return $respuesta;
	
  }

    
}