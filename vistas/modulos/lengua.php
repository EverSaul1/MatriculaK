<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar Lenguas para Matricula
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="matriculas"><i class="fa fa-dashboard"></i>Inicio</a></li>
      
      <li class="active">Administrar Lenguas para Matricula</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarLengua">
          
          Agregar Lengua

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Descripcion</th>
           <th>Comentario</th>
           <th>Acciones</th>

         </tr> 

        </thead>

        <tbody>
          
          <?php

          $Lenguas = ControladorCurricula::ctrMostrarCurricula("Lengua",null, null);

          foreach ($Lenguas as $key => $value) {
           
            echo ' <tr>

                <td>'.($key+1).'</td>

                <td class="text-uppercase">'.$value["descripcion"].'</td>';
              
          if($value["estado"] != 0){

            echo '<td><button class="btn btn-success btn-xs btnActivar" idT="'.$value["id"].'" estadoT="0" t="Lengua">Activado</button></td>';

          }else{
              
            echo '<td><button class="btn btn-danger btn-xs btnActivar" idT="'.$value["id"].'" estadoT="1" t="Lengua">Desactivado</button></td>';

          }             

          echo '<td>'.$value["inicia"].'</td>
                <td>'.$value["termina"].'</td>
                <td>'.$value["creado"].'</td>

                <td>
                <div class="btn-group">

                    <button class="btn btn-warning btnEditarLengua" t="Lengua" idT="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarLengua"><i class="fa fa-pencil"></i></button>

                    <button class="btn btn-danger btnEliminarTabla" t="Lengua" idTabla="'.$value["id"].'"><i class="fa fa-times"></i></button>

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

<div id="modalAgregarLengua" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Nuevo Lengua</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE DEL Lengua-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="pDescripcion" placeholder="Ingrese descripción del Lengua" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL INICIO DEL Lengua -->

             <div class="form-group">
              <div class="input-group date">
                  
                <span class="input-group-addon"><i class="fa fa-calendar"></i></span> 

                <input type="text" class="form-control input-lg" name="pInicia" id="pInicia" placeholder="Ingrese una fecha de inicio para Lengua" required>

              </div>

            </div>
            
            <!-- ENTRADA PARA EL FIN DEL Lengua -->
            
            <div class="form-group">
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-calendar"></i></span> 

                <input type="text" class="form-control input-lg" name="pFin" id="pFin" placeholder="Ingrese una fecha de fin del Lengua" required>

              </div>
              
            </div>
            
          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Lengua</button>

        </div>

        <?php

          $crearLengua = new ControladorCurricula();
          $crearLengua -> ctrCrearLengua();

        ?>
        
      </form>

    </div>

  </div>

</div>
<!--=====================================
MODAL EDITAR CATEGORÍA
======================================-->

<div id="modalEditarLengua" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar Lengua</h4>

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

                <input type="text" class="form-control input-lg" name="editarDescripcion" id="editarDescripcion" required>
                
                <input type="hidden"  name="idLengua" id="idLengua" required>

              </div>

            </div>

            <!-- ENTRADA PARA EDITAR LA FECHA INICIO --> 
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <input type="text" class="form-control input-lg" name="editarInicia" id="editarInicia" required>

              </div>

            </div>
            <!-- ENTRADA PARA EDITAR LA FECHA FIN -->
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <input type="text" class="form-control input-lg" name="editarTermina" id="editarTermina" required>

              </div>

            </div>
            
          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar cambios</button>

        </div>

      <?php

          $editarLengua = new ControladorCurricula();
          $editarLengua -> ctrEditarLenguas();

      ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarLengua = new ControladorCurricula();
  $borrarLengua -> ctrBorrarCurricula();

?>




