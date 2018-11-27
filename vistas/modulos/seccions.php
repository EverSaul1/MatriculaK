<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar Secciones
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i>Inicio</a></li>
      
      <li class="active">Administrar Secciones</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarSeccion">
          
          Agregar seccion

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Sección</th>
           <th>Comentario</th>
           <th>Creado</th>
           <th>Modificado</th>
           <th>Acciones</th>

         </tr> 

        </thead>

        <tbody>
          
          <?php

          $secciones = ControladorCurricula::ctrMostrarCurricula("seccion",null, null);

          foreach ($secciones as $key => $value) {
           
            echo ' <tr>

            <td>'.($key+1).'</td>
            <td class="text-uppercase">'.$value["nombreSeccion"].'</td>
            <td>'.$value["descripcion"].'</td>
            <td>'.$value["creado"].'</td>
            <td>'.$value["modificado"].'</td>

            <td>
            <div class="btn-group">

                <button class="btn btn-warning btnEditarSeccion" t="seccion" idT="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarSeccion"><i class="fa fa-pencil"></i></button>

                <button class="btn btn-danger btnEliminarTabla" t="seccion" idTabla="'.$value["id"].'"><i class="fa fa-times"></i></button>

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
MODAL AGREGAR USUARIO
======================================-->

<div id="modalAgregarSeccion" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Nuevo Seccion</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE DEL SECCION-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="sNombre" placeholder="Ingrese un nombre para la seccion" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL COMENTARIO DEL seccion -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="sComentario" placeholder="Ingrese un comentario de la seccion">

              </div>

            </div>
            
          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Seccion</button>

        </div>

        <?php

          $crearPeriodo = new ControladorCurricula();
          $crearPeriodo -> ctrCrearSeccion();

        ?>
        
      </form>

    </div>

  </div>

</div>
<!--=====================================
MODAL EDITAR CATEGORÍA
======================================-->

<div id="modalEditarSeccion" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar Seccion</h4>

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

                <input type="text" class="form-control input-lg" name="esNombre" id="esNombre" required>
                
                <input type="hidden" name="idSeccion" id="idSeccion" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL COMENTARIO -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <input type="text" class="form-control input-lg" name="esComentario" id="esComentario">

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
          $editarPeriodo -> ctrEditarSecciones();

      ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarPeriodo = new ControladorCurricula();
  $borrarPeriodo -> ctrBorrarCurricula();

?>




