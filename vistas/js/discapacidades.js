
$(".tablas").on("click", ".btnEliminarDiscapacidad", function(){

     var idDiscapacidad = $(this).attr("idDiscapacidad");

     swal({
        title: '¿Está seguro de borrar la Discapacidad?',
        text: "¡Si no lo está puede cancelar la acción!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        cancelButtonText: 'Cancelar',
        confirmButtonText: 'Si, borrar Discapacidad!'
     }).then(function(result){

        if(result.value){

            window.location = "index.php?ruta=discapacidades&idDiscapacidad="+idDiscapacidad;

        }

     })

})

$(".tablas").on("click", ".btnEditarDiscapacidad", function(){

    var idDiscapacidad = $(this).attr("idDiscapacidad");

    var datos = new FormData();
    datos.append("idDiscapacidad", idDiscapacidad);

    $.ajax({
        url: "ajax/discapacidades.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType:"json",
        success: function(respuesta){

            $("#editarDescripcion").val(respuesta["descripcion"]);
            $("#editarComentario").val(respuesta["comentario"]);
            $("#idDiscapacidad").val(respuesta["id_discapacidad"]);

        }

    })


})
