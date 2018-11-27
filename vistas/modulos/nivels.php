<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar Niveles
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i>Inicio</a></li>
      
      <li class="active">Administrar Niveles</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarNivel">
          
          Agregar nivel

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Nivel</th>
           <th>Comentario</th>
           <th>Creado</th>
           <th>Modificado</th>
           <th>Acciones</th>

         </tr> 

        </thead>

        <tbody>
          
          <?php

          $niveles = ControladorCurricula::ctrMostrarCurricula("nivel",null, null);

          foreach ($niveles as $key => $value) {
           
            echo ' <tr>

            <td>'.($key+1).'</td>
            <td class="text-uppercase">'.$value["nombreNivel"].'</td>
            <td>'.$value["descripcion"].'</td>
            <td>'.$value["creado"].'</td>
            <td>'.$value["modificado"].'</td>

            <td>
            <div class="btn-group">

                <button class="btn btn-warning btnEditarNivel" t="nivel" idT="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarNivel"><i class="fa fa-pencil"></i></button>

                <button class="btn btn-danger btnEliminarTabla" t="nivel" idTabla="'.$value["id"].'"><i class="fa fa-times"></i></button>

              </div> 

            </td>

              </tr>';
          }

        ?>              

        </tbody>

       </table>

      </div>

    </div>

  </section>

</div>

<!--=====================================
MODAL AGREGAR NIVEL
======================================-->

<div id="modalAgregarNivel" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Nuevo Nivel</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE DEL NIVEL-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="nNombre" placeholder="Ingrese un nombre para el nivel" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL COMENTARIO DEL nivel -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="nComentario" placeholder="Ingrese un comentario del nivel">

              </div>

            </div>
            
          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Nivel</button>

        </div>

        <?php

          $crearPeriodo = new ControladorCurricula();
          $crearPeriodo -> ctrCrearNivel();

        ?>
        
      </form>

    </div>

  </div>

</div>
<!--=====================================
MODAL EDITAR CATEGORÍA
======================================-->

<div id="modalEditarNivel" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar Nivel</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <input type="text" class="form-control input-lg" name="enNombre" id="enNombre" required>
                
                <input type="hidden" name="idNivel" id="idNivel" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL COMENTARIO -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <input type="text" class="form-control input-lg" name="enComentario" id="enComentario">

              </div>

            </div>
            
          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Cambios</button>

        </div>

      <?php

          $editarPeriodo = new ControladorCurricula();
          $editarPeriodo -> ctrEditarNiveles();

      ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarPeriodo = new ControladorCurricula();
  $borrarPeriodo -> ctrBorrarCurricula();

?>




