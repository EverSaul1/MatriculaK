<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar Ambientes
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i>Inicio</a></li>
      
      <li class="active">Administrar Ambientes</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarAmbiente">
          
          Agregar Ambiente

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Ambiente</th>
           <th>Comentario</th>
           <th>Estado</th>
           <th>Creado</th>
           <th>Acciones</th>

         </tr> 

        </thead>

        <tbody>
          
          <?php

          $ambientes = ControladorCurricula::ctrMostrarCurricula("ambiente",null, null);

          foreach ($ambientes as $key => $value) {
           
            echo ' <tr>

                <td>'.($key+1).'</td>

                <td class="text-uppercase">'.$value["ambiente"].'</td>
                <td class="text-uppercase">'.$value["descripcion"].'</td>';
              
          if($value["estado"] != 0){

            echo '<td><button class="btn btn-success btn-xs btnActivar" idT="'.$value["id"].'" estadoT="0" t="ambiente">Activado</button></td>';

          }else{
              
            echo '<td><button class="btn btn-danger btn-xs btnActivar" idT="'.$value["id"].'" estadoT="1" t="ambiente">Desactivado</button></td>';

          }             

          echo '
            <td>'.$value["creado"].'</td>

            <td>
            <div class="btn-group">

                <button class="btn btn-warning btnEditarAmbiente" t="ambiente" idT="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarAmbiente"><i class="fa fa-pencil"></i></button>

                <button class="btn btn-danger btnEliminarTabla" t="ambiente" idTabla="'.$value["id"].'"><i class="fa fa-times"></i></button>

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

<div id="modalAgregarAmbiente" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Nuevo Ambiente</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE DEL AMBIENTE-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="aDescripcion" placeholder="Ingrese una descipcion del ambiente" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL COMENTARIO DEL AMBIENTE -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="aComentario" placeholder="Ingrese comentario del ambiente">

              </div>

            </div>
            
          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Ambiente</button>

        </div>

        <?php

          $crearPeriodo = new ControladorCurricula();
          $crearPeriodo -> ctrCrearAmbiente();

        ?>
        
      </form>

    </div>

  </div>

</div>
<!--=====================================
MODAL EDITAR CATEGORÍA
======================================-->

<div id="modalEditarAmbiente" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar Ambiente</h4>

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

                <input type="text" class="form-control input-lg" name="eaDescripcion" id="eaDescripcion" required>
                
                <input type="hidden" name="idAmbiente" id="idAmbiente" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL COMENTARIO -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <input type="text" class="form-control input-lg" name="eaComentario" id="eaComentario">

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
          $editarPeriodo -> ctrEditarAmbientes();

      ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarPeriodo = new ControladorCurricula();
  $borrarPeriodo -> ctrBorrarCurricula();

?>




