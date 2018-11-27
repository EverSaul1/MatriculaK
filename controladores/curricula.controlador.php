<?php

  class ControladorCurricula{
  /*--=====================================
    MOSTRAR PERIODOS
  ======================================*/
  static public function ctrMostrarCurricula($tabla,$item, $valor){
        
    $respuesta = ModeloCurricula::mdlMostrarCurricula($tabla, $item, $valor);

    return $respuesta;
	
  }
  /*--=====================================
    REGISTRAR PERIODOS
  ======================================*/    
  static public function ctrCrearPeriodo(){

    if(isset($_POST["pDescripcion"])){

        if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["pDescripcion"])){

            $tabla = "periodo";

            $datos = array("descripcion"=>$_POST["pDescripcion"],
                "inicio"=>$_POST["pInicia"],
                "fin"=>$_POST["pFin"],
                "creado"=>date("Y-m-d H:i:s"),
                "modificado"=>date("Y-m-d H:i:s"),
                "idUsuario"=>$_SESSION["idUsuario"],
                "estado"=>1); 
            
            $respuesta = ModeloCurricula::mdlIngresarPeriodos($tabla, $datos);

            if($respuesta == "ok"){

                echo'<script>

                swal({
                      type: "success",
                      title: "La categoría ha sido guardada correctamente",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                                if (result.value) {

                                window.location = "periodos";

                                }
                            })

                </script>';

            }


        }else{

            echo'<script>

                swal({
                      type: "error",
                      title: "¡La categoría no puede ir vacía o llevar caracteres especiales!",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                        if (result.value) {

                        window.location = "periodos";

                        }
                    })

            </script>';

        }

    }

  }
      
  /*--=====================================
    EDITAR PERIODOS
  ======================================*/       
      
  static public function ctrEditarPeriodos(){

    if(isset($_POST["editarDescripcion"])){

      if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["editarDescripcion"])){

        $tabla = "periodo";

        $datosE = array("id"=>$_POST["idPeriodo"],
            "descripcion"=>$_POST["editarDescripcion"],
            "inicia"=>$_POST["editarInicia"],
            "termina"=>$_POST["editarTermina"],
            "modificado"=>date("Y-m-d H:i:s"),
            "usuario"=>$_SESSION["idUsuario"],
            );

        $respuesta = ModeloCurricula::mdlEditarPeriodos($tabla, $datosE);

        if($respuesta == "ok"){

            echo'<script>

            swal({
              type: "success",
              title: "El periodo ha sido modificado correctamente",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "periodos";

                }
              })

            </script>';

         }


        }else{

            echo'<script>

            swal({
              type: "error",
              title: "¡No puede ir vacía o llevar caracteres especiales!",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "periodos";

                }
             })

            </script>';

        }

    }

  }
      
  /*--=====================================
    ELIMINAR CURRICULA
  ======================================*/ 
      
  static public function ctrBorrarCurricula(){

    if(isset($_GET["idTabla"])){

        $datos = $_GET["idTabla"];
        $tabla = $_GET["t"];

        $respuesta = ModeloCurricula::mdlBorrarCurricula($tabla, $datos);

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
        }
      }
		
	}
    
  /*--=====================================
    REGISTRAR AMBIENTE
  ======================================*/    
  static public function ctrCrearAmbiente(){

    if(isset($_POST["aDescripcion"])){

        if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["aDescripcion"])){

            $tabla = "ambiente";

            $datos = array("descripcion"=>$_POST["aDescripcion"],
                "comentario"=>$_POST["aComentario"],
                "creado"=>date("Y-m-d H:i:s"),
                "modificado"=>date("Y-m-d H:i:s"),
                "usuario"=>$_SESSION["idUsuario"]); 
            
            $respuesta = ModeloCurricula::mdlIngresarAmbiente($tabla, $datos);

            if($respuesta == "ok"){

                echo'<script>

                swal({
                      type: "success",
                      title: "El ambiente ha sido guardada correctamente",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                                if (result.value) {

                                window.location = "ambientes";

                                }
                            })

                </script>';

            }


        }else{

            echo'<script>

                swal({
                      type: "error",
                      title: "¡El ambiente no puede ir vacía o llevar caracteres especiales!",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                        if (result.value) {

                        window.location = "ambientes";

                        }
                    })

            </script>';

        }

    }

  }
      
      
      
  /*--=====================================
    EDITAR AMBIENTE
  ======================================*/       
      
  static public function ctrEditarAmbientes(){

    if(isset($_POST["eaDescripcion"])){

      if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["eaDescripcion"])){

        $tabla = "ambiente";

        $datosE = array("id"=>$_POST["idAmbiente"],
            "descripcion"=>$_POST["eaDescripcion"],
            "comentario"=>$_POST["eaComentario"],
            "modificado"=>date("Y-m-d H:i:s"),
            "usuario"=>$_SESSION["idUsuario"],
            );

        $respuesta = ModeloCurricula::mdlEditarAmbiente($tabla, $datosE);

        if($respuesta == "ok"){

            echo'<script>

            swal({
              type: "success",
              title: "El ambiente ha sido modificado correctamente",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "ambientes";

                }
              })

            </script>';

         }


        }else{

            echo'<script>

            swal({
              type: "error",
              title: "¡No puede ir vacía o llevar caracteres especiales!",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "ambientes";

                }
             })

            </script>';

        }

    }

  }
 
      
 
      

/*--=====================================
    REGISTRAR SECCION
  ======================================*/    
  static public function ctrCrearSeccion(){

    if(isset($_POST["sNombre"])){

        if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["sNombre"])){

            $tabla = "seccion";

            $datos = array("nombre"=>$_POST["sNombre"],
                "comentario"=>$_POST["sComentario"],
                "creado"=>date("Y-m-d H:i:s"),
                "modificado"=>date("Y-m-d H:i:s"),
                "usuario"=>$_SESSION["idUsuario"]); 
            
            $respuesta = ModeloCurricula::mdlIngresarSeccion($tabla, $datos);

            if($respuesta == "ok"){

                echo'<script>

                swal({
                      type: "success",
                      title: "La sección ha sido creada correctamente",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                                if (result.value) {

                                window.location = "seccions";

                                }
                            })

                </script>';

            }


        }else{

            echo'<script>

                swal({
                      type: "error",
                      title: "¡La seccion no puede ir vacía o llevar caracteres especiales!",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                        if (result.value) {

                        window.location = "seccions";

                        }
                    })

            </script>';

        }

    }

  }
      
      
      
  /*--=====================================
    EDITAR SECCION
  ======================================*/       
      
  static public function ctrEditarSecciones(){

    if(isset($_POST["esNombre"])){

      if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["esNombre"])){

        $tabla = "seccion";

        $datosE = array("id"=>$_POST["idSeccion"],
            "nombre"=>$_POST["esNombre"],
            "comentario"=>$_POST["esComentario"],
            "modificado"=>date("Y-m-d H:i:s"),
            "usuario"=>$_SESSION["idUsuario"],
            );

        $respuesta = ModeloCurricula::mdlEditarSeccion($tabla, $datosE);

        if($respuesta == "ok"){

            echo'<script>

            swal({
              type: "success",
              title: "La sección ha sido modificada correctamente",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "seccions";

                }
              })

            </script>';

         }


        }else{

            echo'<script>

            swal({
              type: "error",
              title: "¡No puede ir vacía o llevar caracteres especiales!",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "seccions";

                }
             })

            </script>';

        }

    }

  }
 
   
      

/*--=====================================
    REGISTRAR NIVEL
  ======================================*/    
  static public function ctrCrearNivel(){

    if(isset($_POST["nNombre"])){

        if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nNombre"])){

            $tabla = "nivel";

            $datos = array("nombre"=>$_POST["nNombre"],
                "comentario"=>$_POST["nComentario"],
                "creado"=>date("Y-m-d H:i:s"),
                "modificado"=>date("Y-m-d H:i:s"),
                "usuario"=>$_SESSION["idUsuario"]); 
            
            $respuesta = ModeloCurricula::mdlIngresarNivel($tabla, $datos);

            if($respuesta == "ok"){

                echo'<script>

                swal({
                      type: "success",
                      title: "El nivel ha sido creada correctamente",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                                if (result.value) {

                                window.location = "nivels";

                                }
                            })

                </script>';

            }


        }else{

            echo'<script>

                swal({
                      type: "error",
                      title: "¡El nivel no puede ir vacía o llevar caracteres especiales!",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                        if (result.value) {

                        window.location = "nivels";

                        }
                    })

            </script>';

        }

    }

  }
      
      
          
  /*--=====================================
    EDITAR NIVEL
  ======================================*/       
      
  static public function ctrEditarNiveles(){

    if(isset($_POST["enNombre"])){

      if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["enNombre"])){

        $tabla = "nivel";

        $datosE = array("id"=>$_POST["idNivel"],
            "nombre"=>$_POST["enNombre"],
            "comentario"=>$_POST["enComentario"],
            "modificado"=>date("Y-m-d H:i:s"),
            "usuario"=>$_SESSION["idUsuario"],
            );

        $respuesta = ModeloCurricula::mdlEditarNivel($tabla, $datosE);

        if($respuesta == "ok"){

            echo'<script>

            swal({
              type: "success",
              title: "El nivel ha sido modificada correctamente",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "nivels";

                }
              })

            </script>';

         }


        }else{

            echo'<script>

            swal({
              type: "error",
              title: "¡No puede ir vacía o llevar caracteres especiales!",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "nivels";

                }
             })

            </script>';

        }

    }

  }
 
   
      

/*--=====================================
    REGISTRAR GRADO
  ======================================*/    
  static public function ctrCrearGrado(){

    if(isset($_POST["gNombre"])){

        if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["gNombre"])){

            $tabla = "grado";

            $datos = array("nombre"=>$_POST["gNombre"],
                "comentario"=>$_POST["gComentario"],
                "creado"=>date("Y-m-d H:i:s"),
                "modificado"=>date("Y-m-d H:i:s"),
                "usuario"=>$_SESSION["idUsuario"]); 
            
            $respuesta = ModeloCurricula::mdlIngresarGrado($tabla, $datos);

            if($respuesta == "ok"){

                echo'<script>

                swal({
                      type: "success",
                      title: "El grado ha sido creado correctamente",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                                if (result.value) {

                                window.location = "grados";

                                }
                            })

                </script>';

            }


        }else{

            echo'<script>

                swal({
                      type: "error",
                      title: "¡El grado no puede ir vacía o llevar caracteres especiales!",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                        if (result.value) {

                        window.location = "grado";

                        }
                    })

            </script>';

        }

    }

  }
      
      
          
  /*--=====================================
    EDITAR GRADO
  ======================================*/       
      
  static public function ctrEditarGrados(){

    if(isset($_POST["egNombre"])){

      if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["egNombre"])){

        $tabla = "grado";

        $datosE = array("id"=>$_POST["idGrado"],
            "nombre"=>$_POST["egNombre"],
            "comentario"=>$_POST["egComentario"],
            "modificado"=>date("Y-m-d H:i:s"),
            "usuario"=>$_SESSION["idUsuario"],
            );

        $respuesta = ModeloCurricula::mdlEditarGrado($tabla, $datosE);

        if($respuesta == "ok"){

            echo'<script>

            swal({
              type: "success",
              title: "El grado ha sido modificado correctamente",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "grados";

                }
              })

            </script>';

         }


        }else{

            echo'<script>

            swal({
              type: "error",
              title: "¡No puede ir vacía o llevar caracteres especiales!",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "grados";

                }
             })

            </script>';

        }

    }

  } 
      
            
  /*--=====================================
    MOSTRAR GRUPO
  ======================================*/
  static public function ctrMostrarGrupos($tabla1,$tab2,$tab3,$tab4,$tab5,$tab6,$i,$v){
        
    $respuesta = ModeloCurricula::mdlMostrarGrupos($tabla1,$tab2,$tab3,$tab4,$tab5,$tab6,$i,$v);
    
    return $respuesta;
	
  }
      
      
  /*--=====================================
    REGISTRAR GRUPOS
  ======================================*/    
  static public function ctrCrearGrupo(){

    if(isset($_POST["gDescripcion"])){

        if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["gDescripcion"])){

            $tabla = "grupo";

            $datos = array("descripcion"=>$_POST["gDescripcion"],
                "periodo"=>$_POST["periodoG"],
                "nivel"=>$_POST["nivelG"],
                "grado"=>$_POST["gradoG"],
                "seccion"=>$_POST["seccionG"],
                "ambiente"=>$_POST["ambienteG"],
                "creado"=>date("Y-m-d H:i:s"),
                "modificado"=>date("Y-m-d H:i:s"),
                "usuario"=>$_SESSION["idUsuario"]); 
            
            $respuesta = ModeloCurricula::mdlIngresarGrupo($tabla, $datos);

            if($respuesta == "ok"){

                echo'<script>

                swal({
                      type: "success",
                      title: "El grupo ha sido guardada correctamente",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                                if (result.value) {

                                window.location = "grupos";

                                }
                            })

                </script>';

            }


        }else{

            echo'<script>

                swal({
                      type: "error",
                      title: "¡El grupo no puede ir vacía o llevar caracteres especiales!",
                      showConfirmButton: true,
                      confirmButtonText: "Cerrar",
                      closeOnConfirm: false
                      }).then((result) => {
                        if (result.value) {

                        window.location = "grupos";

                        }
                    })

            </script>';

        }

    }

  }
      
  /*--=====================================
    EDITAR PERIODOS
  ======================================*/       
      
  static public function ctrEditarGrupos(){

    if(isset($_POST["egDescripcion"])){

      if(preg_match('/^[#\a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["egDescripcion"])){

        $tabla = "grupo";

        $datosE = array("id"=>$_POST["idEGrupo"],
            "descripcion"=>$_POST["egDescripcion"],
            "periodo"=>$_POST["eperiodoG"],
            "nivel"=>$_POST["enivelG"],
            "grado"=>$_POST["egradoG"],
            "seccion"=>$_POST["eseccionG"],
            "ambiente"=>$_POST["eambienteG"],
            "modificado"=>date("Y-m-d H:i:s"),
            "usuario"=>$_SESSION["idUsuario"]
            );

        $respuesta = ModeloCurricula::mdlEditarGrupo($tabla, $datosE);

        if($respuesta == "ok"){

            echo'<script>

            swal({
              type: "success",
              title: "El grupo ha sido modificado correctamente",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "grupos";

                }
              })

            </script>';

         }else{

            echo'<script>

            swal({
              type: "error",
              title: "¡No se puedo modificar!",
              showConfirmButton: true,
              confirmButtonText: "Cerrar"
              }).then(function(result){
                if (result.value) {

                window.location = "grupos";

                }
             })

            </script>';

        }


        }  
        
    }

  }
      
    
}