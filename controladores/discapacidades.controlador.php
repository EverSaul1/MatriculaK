<?php

	class ControladorDiscapacidades{


		static public function ctrEditarDiscapacidades(){

		if(isset($_POST["editarDescripcion"])){

			if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["editarDescripcion"])&&
				preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["editarComentario"])){

				$tabla = "discapacidad";

				$datos = array("id_discapacidad"=>$_POST["idDiscapacidad"],
								"descripcion"=>$_POST["editarDescripcion"],
								"comentario"=>$_POST["editarComentario"],
							   );

				$respuesta = ModeloDiscapacidades::mdlEditarDiscapacidades($tabla, $datos);

				if($respuesta == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "Ha sido cambiada correctamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "discapacidades";

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

							window.location = "discapacidades";

							}
						})

			  	</script>';

			}

		}

	}


		static public function ctrCrearDiscapacidad(){

			if(isset($_POST["nuevaDescripcion"])){

				if(preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nuevaDescripcion"])&&
				   preg_match('/^[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚ ]+$/', $_POST["nuevoComentario"])){

					$tabla = "discapacidad";

					$datos = array("descripcion"=>$_POST["nuevaDescripcion"],
					         		"comentario"=>$_POST["nuevoComentario"]);

					$respuesta = ModeloDiscapacidades::mdlIngresarDiscapacidades($tabla, $datos);

					if($respuesta == "ok"){

					echo'<script>

					swal({
						  type: "success",
						  title: "Se guardo correctamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "discapacidades";

									}
								})

					</script>';

				}

				}else{

				echo'<script>

					swal({
						  type: "error",
						  title: "¡ No puede ir vacía o llevar caracteres especiales!",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
							if (result.value) {

							window.location = "discapacidades";

							}
						})

			  	</script>';

			}


				}
			}

			

		static public function ctrMostrarDiscapacidades($item, $valor){

		$tabla = "discapacidad";

		$respuesta = ModeloDiscapacidades::mdlMostrarDiscapacidades($tabla, $item, $valor);

		return $respuesta;
	
	}

	static public function ctrBorrarDiscapacidad(){

		if(isset($_GET["idDiscapacidad"])){

			$tabla ="discapacidad";
			$datos = $_GET["idDiscapacidad"];

			$respuesta = ModeloDiscapacidades::mdlBorrarDiscapacidades($tabla, $datos);

			if($respuesta == "ok"){

				echo'<script>

					swal({
						  type: "success",
						  title: "La categoría ha sido borrada correctamente",
						  showConfirmButton: true,
						  confirmButtonText: "Cerrar"
						  }).then(function(result){
									if (result.value) {

									window.location = "discapacidades";

									}
								})

					</script>';
			}
		}
		
	}

}