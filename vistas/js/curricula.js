/*=============================================
 PERIODO
=============================================*/
$('#pInicia, #pFin, #editarInicia, #editarTermina').datepicker({
autoclose: true,
format: "yyyy/mm/dd"
})

/*=============================================
ACTIVAR ESTADO
=============================================*/
$(document).on("click", ".btnActivar", function(){

	var idTabla = $(this).attr("idT");
	var estadoTabla = $(this).attr("estadoT");
	var tabla = $(this).attr("t");

	var datos = new FormData();
 	datos.append("idTabla", idTabla);
  	datos.append("estadoTabla", estadoTabla);
  	datos.append("tabla", tabla);

  	$.ajax({

	  url:"ajax/curricula.ajax.php",
	  method: "POST",
	  data: datos,
	  cache: false,
      contentType: false,
      processData: false,
      success: function(respuesta){}

  	})

  	if(estadoTabla == 0){

  		$(this).removeClass('btn-success');
  		$(this).addClass('btn-danger');
  		$(this).html('Desactivado');
  		$(this).attr('estadoT',1);

  	}else{

  		$(this).addClass('btn-success');
  		$(this).removeClass('btn-danger');
  		$(this).html('Activado');
  		$(this).attr('estadoT',0);

  	}

})

$(".tablas").on("click", ".btnEditarPeriodo", function(){

	var idTabla = $(this).attr("idT");
	var tabla = "periodo";

	var datos = new FormData();
	datos.append("idTabla", idTabla);
	datos.append("tabla", tabla);

	$.ajax({
        url: "ajax/curricula.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function(respuesta){

            $("#editarDescripcion").val(respuesta["descripcion"]);
            $("#editarInicia").val(respuesta["inicia"]);
            $("#editarTermina").val(respuesta["termina"]);
            $("#idPeriodo").val(respuesta["id"]);

        }
        
	})

})

$(".tablas").on("click", ".btnEliminarTabla", function(){

     var idTabla = $(this).attr("idTabla");
     var tabla = $(this).attr("t");

     swal({
        title: '¿ Está seguro de borrar el '+tabla+' ?',
        text: "¡Si no lo está puede cancelar la acción!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, borrar '+tabla+'!'
     }).then(function(result){

        if(result.value){

            window.location = "index.php?ruta="+tabla+"s&idTabla="+idTabla+"&t="+tabla;

        }

     })

})

  /*--==============================================================
     AMBIENTE
  ===============================================================*/

$(".tablas").on("click", ".btnEditarAmbiente", function(){

	var idTabla = $(this).attr("idT");
	var tabla = "ambiente";

	var datos = new FormData();
	datos.append("idTabla", idTabla);
	datos.append("tabla", tabla);

	$.ajax({
        url: "ajax/curricula.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function(respuesta){

            $("#eaDescripcion").val(respuesta["ambiente"]);
            $("#eaComentario").val(respuesta["descripcion"]);
            $("#idAmbiente").val(respuesta["id"]);

        }
        
	})

})
  /*--==============================================================
     SECCION
  ===============================================================*/

$(".tablas").on("click", ".btnEditarSeccion", function(){

	var idTabla = $(this).attr("idT");
	var tabla = "seccion";

	var datos = new FormData();
	datos.append("idTabla", idTabla);
	datos.append("tabla", tabla);

	$.ajax({
        url: "ajax/curricula.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function(respuesta){

            $("#esNombre").val(respuesta["nombreSeccion"]);
            $("#esComentario").val(respuesta["descripcion"]);
            $("#idSeccion").val(respuesta["id"]);

        }
        
	})

})

  /*--==============================================================
     NIVEL
  ===============================================================*/

$(".tablas").on("click", ".btnEditarNivel", function(){

	var idTabla = $(this).attr("idT");
	var tabla = "nivel";

	var datos = new FormData();
	datos.append("idTabla", idTabla);
	datos.append("tabla", tabla);

	$.ajax({
        url: "ajax/curricula.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function(respuesta){

            $("#enNombre").val(respuesta["nombreNivel"]);
            $("#enComentario").val(respuesta["descripcion"]);
            $("#idNivel").val(respuesta["id"]);

        }
        
	})

})

  /*--==============================================================
     GRADO
  ===============================================================*/

$(".tablas").on("click", ".btnEditarGrado", function(){

	var idTabla = $(this).attr("idT");
	var tabla = "grado";

	var datos = new FormData();
	datos.append("idTabla", idTabla);
	datos.append("tabla", tabla);

	$.ajax({
        url: "ajax/curricula.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function(respuesta){

            $("#egNombre").val(respuesta["nombreGrado"]);
            $("#egComentario").val(respuesta["descripcion"]);
            $("#idGrado").val(respuesta["id"]);

        }
        
	})

})


  /*--==============================================================
     GRUPO
  ===============================================================*/

$(".tablas").on("click", ".btnEditarGrupo", function(){

	var idTablaG = $(this).attr("idT");
	var tablaG = "grupo";

	var datos = new FormData();
	datos.append("idTablaG", idTablaG);
	datos.append("tablaG", tablaG);

	$.ajax({
        url: "ajax/curricula.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function(respuesta){

            $("#idEGrupo").val(respuesta["id"]);
            $("#egDescripcion").val(respuesta["descripcion"]);
            $("#eperiodoG").val(respuesta["idPeriodo"]);
            $("#eperiodoG").html(respuesta["dePe"]);
            $("#enivelG").val(respuesta["idNivel"]);
            $("#enivelG").html(respuesta["nombreNivel"]);
            $("#egradoG").val(respuesta["idGrado"]);
            $("#egradoG").html(respuesta["nombreGrado"]);
            $("#eseccionG").val(respuesta["idSeccion"]);
            $("#eseccionG").html(respuesta["nombreSeccion"]);
            $("#eambienteG").val(respuesta["idAmbiente"]);
            $("#eambienteG").html(respuesta["ambiente"]);

        }
        
	})

})