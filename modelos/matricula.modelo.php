<?php

require_once "conexion.php";

class ModeloMatricula{
  /*--=======================================================================
     CONSULTAR TABLA POR ID, COMUNLA, TODO
  ===========================================================================*/
  static public function mdlConsultar($tabla, $item, $valor){

    if($item == "id" or $item == "ubigeo"){

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

        $stmt -> bindParam(":$item", $valor, PDO::PARAM_INT);

        $stmt -> execute();

        return $stmt -> fetch();

      }
    if($item == "dni"){

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE dni = :dni");

        $stmt -> bindParam(":dni", $valor, PDO::PARAM_STR);

        $stmt -> execute();

        return $stmt -> fetch();

      }
    if($item != null){

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

        $stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

        $stmt -> execute();

        return $stmt -> fetchAll();

    }else{

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC");

        $stmt -> execute();

        return $stmt -> fetchAll();

      }

      $stmt -> close();

      $stmt = null;

	}
   /*--=====================================
    ELIMINAR TABLA POR ID , COLUMNA 
  ======================================*/   
  static public function mdlEliminarByItem($tabla, $item, $valor){

    if($item == "id"){
        
    $stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

    $stmt -> bindParam(":id", $valor, PDO::PARAM_INT);
    }else{

        $stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE $item = :$item");

        $stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

      }

    if($stmt -> execute()){

        return "ok";

    }else{

        return "error";	

    }
      
	} 
  
  /*--=====================================
   REGISTRAR PERIODOS
  ======================================*/ 
  static public function mdlIngresarPersona($tabla, $datos){

    $stmt = Conexion::conectar()->prepare("INSERT INTO $tabla
    (dni,nombre,apePaterno,apeMaterno,fechaNacimiento,tipoPersona,padre,madre,sexo,lenguaMaterna
    ,lugarHermanos,tipoParto,complicacionesParto,idUbigeo) VALUES 
(:dni,:nombre,:apeP,:apeM,:fechaN,:tipoPe,:padre,:madre,:sexo,:lengua,:lugar,:tipoP,:comp,:ubigeo)");

		$stmt->bindParam(":dni", $datos["dni"], PDO::PARAM_INT);
		$stmt->bindParam(":nombre", $datos["nombres"], PDO::PARAM_STR);
		$stmt->bindParam(":apeP", $datos["apeP"], PDO::PARAM_STR);
		$stmt->bindParam(":apeM", $datos["apeM"], PDO::PARAM_STR);
		$stmt->bindParam(":fechaN", $datos["fechaN"], PDO::PARAM_STR);
		$stmt->bindParam(":tipoPe", $datos["tipoPe"], PDO::PARAM_STR);
		$stmt->bindParam(":padre", $datos["padre"], PDO::PARAM_INT);
		$stmt->bindParam(":madre", $datos["madre"], PDO::PARAM_INT);
		$stmt->bindParam(":sexo", $datos["sexo"], PDO::PARAM_INT);
		$stmt->bindParam(":lengua", $datos["lengua"], PDO::PARAM_INT);
		$stmt->bindParam(":lugar", $datos["lugar"], PDO::PARAM_INT);
		$stmt->bindParam(":tipoP", $datos["tipoP"], PDO::PARAM_INT);
		$stmt->bindParam(":comp", $datos["complicaciones"], PDO::PARAM_INT);
		$stmt->bindParam(":ubigeo", $datos["ubigeo"], PDO::PARAM_INT);
 
		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;

  }
    
  /*--=======================================================================
     CONSULTAR PADRES
  ===========================================================================*/
  static public function mdlConsultarPadres($t1,$t2,$i1, $v1,$i2, $v2){

    if($i1 == "id"){

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

        $stmt -> bindParam(":$item", $valor, PDO::PARAM_INT);

        $stmt -> execute();

        return $stmt -> fetch();

    }else{

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $t1,$t2 WHERE $t1.idPersona = $t2.id
        AND $t2.$i2 = :$i2 ORDER BY $t1.id DESC");
        
        $stmt -> bindParam(":$i2", $v2, PDO::PARAM_INT);
        $stmt -> execute();

        return $stmt -> fetchAll();

      }

      $stmt -> close();

      $stmt = null;

	}
 

              
}