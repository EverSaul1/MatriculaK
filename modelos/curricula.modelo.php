<?php

require_once "conexion.php";

class ModeloCurricula{
  /*--=====================================
     MOSTRAR PERIODOS
  ======================================*/
  static public function mdlMostrarCurricula($tabla, $item, $valor){

    if($item != null){

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

        $stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

        $stmt -> execute();

        return $stmt -> fetch();

      }else{

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC");

        $stmt -> execute();

        return $stmt -> fetchAll();

      }

      $stmt -> close();

      $stmt = null;

	}
  /*--=====================================
   REGISTRAR PERIODOS
  ======================================*/ 
  static public function mdlIngresarPeriodos($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla
    (descripcion,inicia,termina,estado,creado,modificado,idUsuario) VALUES
    (:descripcion,:inicia,:termina,:estado,:creado,:modificado,:usuario)");

		$stmt->bindParam(":descripcion", $datos["descripcion"], PDO::PARAM_STR);
		$stmt->bindParam(":inicia", $datos["inicio"], PDO::PARAM_STR);
		$stmt->bindParam(":termina", $datos["fin"], PDO::PARAM_STR);
		$stmt->bindParam(":estado", $datos["estado"], PDO::PARAM_INT);
		$stmt->bindParam(":creado", $datos["creado"], PDO::PARAM_STR);
		$stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

  }
  /*=============================================
    ACTUALIZAR PERIODO
  =============================================*/

  static public function mdlActualizarEstado($tabla, $item1, $valor1, $item2, $valor2){

    $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE $item2 = :$item2");

    $stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_INT);
    $stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_INT);

    if($stmt -> execute()){

        return "ok";

    }else{

        return "error";	

    }

    $stmt -> close();

    $stmt = null;

  }
    
  /*=============================================
    EDITAR PERIODO
  =============================================*/
  static public function mdlEditarPeriodos($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET descripcion = :descripcion,
    inicia = :inicia, termina = :termina ,modificado = :modificado,idUsuario = :usuario
    WHERE id = :id");

    $stmt -> bindParam(":descripcion", $datos["descripcion"], PDO::PARAM_STR);
    $stmt->bindParam(":inicia", $datos["inicia"], PDO::PARAM_STR);
    $stmt->bindParam(":termina", $datos["termina"], PDO::PARAM_STR);
    $stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
    $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);  
    $stmt -> bindParam(":id", $datos["id"], PDO::PARAM_INT);

    if($stmt->execute()){

        return "ok";

    }else{

        return "error";

    }

    $stmt->close();
    $stmt = null;

	}

  /*--=====================================
    ELIMINAR PERIODOS
  ======================================*/   
  static public function mdlBorrarCurricula($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

    $stmt -> bindParam(":id", $datos, PDO::PARAM_INT);

    if($stmt -> execute()){

        return "ok";

    }else{

        return "error";	

    }

    $stmt -> close();

    $stmt = null;

	}
    
    
    
  /*--=====================================
   REGISTRAR PERIODOS
  ======================================*/ 
  static public function mdlIngresarAmbiente($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla
    (ambiente,descripcion,creado,modificado,idUsuario) VALUES
    (:ambiente,:descripcion,:creado,:modificado,:usuario)");

		$stmt->bindParam(":ambiente", $datos["descripcion"], PDO::PARAM_STR);
		$stmt->bindParam(":descripcion", $datos["comentario"], PDO::PARAM_STR);
		$stmt->bindParam(":creado", $datos["creado"], PDO::PARAM_STR);
		$stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

  }
    
    
  /*=============================================
    EDITAR AMBIENTE
  =============================================*/
  static public function mdlEditarAmbiente($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET ambiente = :ambiente,
    descripcion = :descripcion, modificado = :modificado,idUsuario = :usuario
    WHERE id = :id");

    $stmt -> bindParam(":ambiente", $datos["descripcion"], PDO::PARAM_STR);
    $stmt->bindParam(":descripcion", $datos["comentario"], PDO::PARAM_STR);
    $stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
    $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);  
    $stmt -> bindParam(":id", $datos["id"], PDO::PARAM_INT);

    if($stmt->execute()){

        return "ok";

    }else{

        return "error";

    }

    $stmt->close();
    $stmt = null;

	}

      
  /*--=====================================
   REGISTRAR SECCIONES
  ======================================*/ 
  static public function mdlIngresarSeccion($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla
    (nombreSeccion,descripcion,creado,modificado,idUsuario) VALUES
    (:nombre,:descripcion,:creado,:modificado,:usuario)");

		$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":descripcion", $datos["comentario"], PDO::PARAM_STR);
		$stmt->bindParam(":creado", $datos["creado"], PDO::PARAM_STR);
		$stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

  }
    
    
  /*=============================================
    EDITAR SECCION
  =============================================*/
  static public function mdlEditarSeccion($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombreSeccion = :nombre,
    descripcion = :descripcion, modificado = :modificado,idUsuario = :usuario
    WHERE id = :id");

    $stmt -> bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
    $stmt->bindParam(":descripcion", $datos["comentario"], PDO::PARAM_STR);
    $stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
    $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);  
    $stmt -> bindParam(":id", $datos["id"], PDO::PARAM_INT);

    if($stmt->execute()){

        return "ok";

    }else{

        return "error";

    }

    $stmt->close();
    $stmt = null;

	}

     
  /*--=====================================
   REGISTRAR NIVEL
  ======================================*/ 
  static public function mdlIngresarNivel($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla
    (nombreNivel,descripcion,creado,modificado,idUsuario) VALUES
    (:nombre,:descripcion,:creado,:modificado,:usuario)");

		$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":descripcion", $datos["comentario"], PDO::PARAM_STR);
		$stmt->bindParam(":creado", $datos["creado"], PDO::PARAM_STR);
		$stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

  }
    
    
  /*=============================================
    EDITAR NIVEL
  =============================================*/
  static public function mdlEditarNivel($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombreNivel = :nombre,
    descripcion = :descripcion, modificado = :modificado,idUsuario = :usuario
    WHERE id = :id");

    $stmt -> bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
    $stmt->bindParam(":descripcion", $datos["comentario"], PDO::PARAM_STR);
    $stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
    $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);  
    $stmt -> bindParam(":id", $datos["id"], PDO::PARAM_INT);

    if($stmt->execute()){

        return "ok";

    }else{

        return "error";

    }

    $stmt->close();
    $stmt = null;

	}

      
  /*--=====================================
   REGISTRAR GRADO
  ======================================*/ 
  static public function mdlIngresarGrado($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla
    (nombreGrado,descripcion,creado,modificado,idUsuario) VALUES
    (:nombre,:descripcion,:creado,:modificado,:usuario)");

		$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":descripcion", $datos["comentario"], PDO::PARAM_STR);
		$stmt->bindParam(":creado", $datos["creado"], PDO::PARAM_STR);
		$stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

  }
    
    
  /*=============================================
    EDITAR GRADO
  =============================================*/
  static public function mdlEditarGrado($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombreGrado = :nombre,
    descripcion = :descripcion, modificado = :modificado,idUsuario = :usuario
    WHERE id = :id");

    $stmt -> bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
    $stmt->bindParam(":descripcion", $datos["comentario"], PDO::PARAM_STR);
    $stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
    $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);  
    $stmt -> bindParam(":id", $datos["id"], PDO::PARAM_INT);

    if($stmt->execute()){

        return "ok";

    }else{

        return "error";

    }

    $stmt->close();
    $stmt = null;

	}

  /*--=====================================
     MOSTRAR GRUPOS
  ======================================*/
  static public function mdlMostrarGrupos($t1,$t2,$t3,$t4,$t5,$t6,$i,$v){
      if($i != null){

        $stmt = Conexion::conectar()->prepare("SELECT $t1.*,$t2.ambiente,$t3.descripcion as dePe
      ,$t4.nombreSeccion,$t5.nombreGrado,$t6.nombreNivel FROM $t1,$t2,$t3,$t4,$t5,$t6 WHERE 
      $t1.idAmbiente=$t2.id AND $t1.idPeriodo=$t3.id AND $t1.idSeccion=$t4.id AND $t1.idGrado=$t5.id
      AND $t1.idNivel=$t6.id AND $t1.$i = :$i");

        $stmt -> bindParam(":".$i, $v, PDO::PARAM_STR);

        $stmt -> execute();

        return $stmt -> fetch();

      }else{

        $stmt = Conexion::conectar()->prepare("SELECT $t1.*,$t2.ambiente,$t3.descripcion as dePe
      ,$t4.nombreSeccion,$t5.nombreGrado,$t6.nombreNivel FROM $t1,$t2,$t3,$t4,$t5,$t6 WHERE 
      $t1.idAmbiente=$t2.id AND $t1.idPeriodo=$t3.id AND $t1.idSeccion=$t4.id AND $t1.idGrado=$t5.id
      AND $t1.idNivel=$t6.id ORDER BY $t1.id DESC
      ");

      $stmt -> execute();

        return $stmt -> fetchAll();

      }

      $stmt -> close();

      $stmt = null;

	}
    
          
  /*--=====================================
   REGISTRAR GRUPO
  ======================================*/ 
  static public function mdlIngresarGrupo($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla
    (descripcion,idAmbiente,idPeriodo,idSeccion,idGrado,idNivel,creado,modificado,idUsuario) VALUES
    (:descripcion,:ambiente,:periodo,:seccion,:grado,:nivel,:creado,:modificado,:usuario)");

		$stmt->bindParam(":descripcion", $datos["descripcion"], PDO::PARAM_STR);
		$stmt->bindParam(":ambiente", $datos["ambiente"], PDO::PARAM_INT);
		$stmt->bindParam(":periodo", $datos["periodo"], PDO::PARAM_INT);
		$stmt->bindParam(":seccion", $datos["seccion"], PDO::PARAM_INT);
		$stmt->bindParam(":grado", $datos["grado"], PDO::PARAM_INT);
		$stmt->bindParam(":nivel", $datos["nivel"], PDO::PARAM_INT);
		$stmt->bindParam(":creado", $datos["creado"], PDO::PARAM_STR);
		$stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

  }
    
    
  /*=============================================
    EDITAR GRADO
  =============================================*/
  static public function mdlEditarGrupo($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET descripcion = :descripcion,
    idAmbiente = :ambiente, idPeriodo = :periodo,idSeccion = :seccion,idGrado = :grado,idNivel 
    = :nivel,modificado = :modificado,idUsuario = :idUsuario WHERE id = :id");

    $stmt->bindParam(":descripcion", $datos["descripcion"], PDO::PARAM_STR);
    $stmt->bindParam(":ambiente", $datos["ambiente"], PDO::PARAM_INT);
    $stmt->bindParam(":periodo", $datos["periodo"], PDO::PARAM_INT);
    $stmt->bindParam(":seccion", $datos["seccion"], PDO::PARAM_INT);
    $stmt->bindParam(":grado", $datos["grado"], PDO::PARAM_INT);
    $stmt->bindParam(":nivel", $datos["nivel"], PDO::PARAM_INT);
    $stmt->bindParam(":modificado", $datos["modificado"], PDO::PARAM_STR);
    $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_INT);
    $stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);

    if($stmt->execute()){

        return "ok";

    }else{

        return "error";

    }

    $stmt->close();
    $stmt = null;

	}
}