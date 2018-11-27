/*=============================================
 MATRICULA
=============================================*/
$('#fechaNA, #fNP, #fechaNP, #fechaNM, #fechaApo').datepicker({
autoclose: true,
format: "yyyy/mm/dd"
});

/*=============================================
REVISAR SI EL UBIGEO DE LA PERSONA YA ESTÁ REGISTRADO
=============================================*/

$("#ubgeoP").change(function(){
    
	$(".alertC").remove();

	var ubigeo = $(this).val();

	var datos = new FormData();
	datos.append("validarValor", ubigeo);
	datos.append("item", "id");
	datos.append("tabla", "ubigeo");

	 $.ajax({
	    url:"ajax/matricula.ajax.php",
	    method:"POST",
	    data: datos,
	    cache: false,
	    contentType: false,
	    processData: false,
	    dataType: "json",
	    success:function(respuesta){
	    	
            if(respuesta){

	    	}else{
                $("#ubgeoP").parent().after('<h5 class="alertC" style=" color:#f39c12"><i class="icon fa fa-warning"></i>  El ubigeo no existe en la base de datos, ingrese otro !!!</h5>');
                
	    		$("#ubgeoP").val("");
            }

	    }

	})
});

/*=============================================
REVISAR SI EL DNI DE LA PERSONA YA ESTÁ REGISTRADO
=============================================*/

$("#dniP").change(function(){
	$(".alertC").remove();

	var dni = $(this).val();

	var datos = new FormData();
	datos.append("validarValor", dni);
	datos.append("item", "dni");
	datos.append("tabla", "persona");

	 $.ajax({
	    url:"ajax/matricula.ajax.php",
	    method:"POST",
	    data: datos,
	    cache: false,
	    contentType: false,
	    processData: false,
	    dataType: "json",
	    success:function(respuesta){
	    	
            if(respuesta){

	    		$("#dniP").parent().after('<h5 class="alertC" style=" color:#f39c12"><i class="icon fa fa-warning"></i>  El dni ya existe en la base de datos, registre otro !!!</h5>');
                
	    		$("#dniP").val("");
	    	}

	    }

	})
});