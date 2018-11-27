<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar Periodos
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i>Inicio</a></li>
      
      <li class="active">Administrar Periodos</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarPeriodo">
          
          Agregar Periodo

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Descripcion</th>
           <th>Estado</th>
           <th>Inicia</th>
           <th>Termina</th>
           <th>Creado</th>
           <th>Acciones</th>

         </tr> 

        </thead>

        <tbody>
          
          <?php

          $periodos = ControladorCurricula::ctrMostrarCurricula("periodo",null, null);

          foreach ($periodos as $key => $value) {
           
            echo ' <tr>

                <td>'.($key+1).'</td>

                <td class="text-uppercase">'.$value["descripcion"].'</td>';
              
          if($value["estado"] != 0){

            echo '<td><button class="btn btn-success btn-xs btnActivar" idT="'.$value["id"].'" estadoT="0" t="periodo">Activado</button></td>';

          }else{
              
            echo '<td><button class="btn btn-danger btn-xs btnActivar" idT="'.$value["id"].'" estadoT="1" t="periodo">Desactivado</button></td>';

          }             

          echo '<td>'.$value["inicia"].'</td>
                <td>'.$value["termina"].'</td>
                <td>'.$value["creado"].'</td>

                <td>
                <div class="btn-group">

                    <button class="btn btn-warning btnEditarPeriodo" t="periodo" idT="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarPeriodo"><i class="fa fa-pencil"></i></button>

                    <button class="btn btn-danger btnEliminarTabla" t="periodo" idTabla="'.$value["id"].'"><i class="fa fa-times"></i></button>

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

<div id="modalAgregarPeriodo" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Nuevo Periodo</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE DEL PERIODO-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="pDescripcion" placeholder="Ingrese descripción del periodo" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL INICIO DEL PERIODO -->

             <div class="form-group">
              <div class="input-group date">
                  
                <span class="input-group-addon"><i class="fa fa-calendar"></i></span> 

                <input type="text" class="form-control input-lg" name="pInicia" id="pInicia" placeholder="Ingrese una fecha de inicio para periodo" required>

              </div>

            </div>
            
            <!-- ENTRADA PARA EL FIN DEL PERIODO -->
            
            <div class="form-group">
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-calendar"></i></span> 

                <input type="text" class="form-control input-lg" name="pFin" id="pFin" placeholder="Ingrese una fecha de fin del periodo" required>

              </div>
              
            </div>
            
          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Periodo</button>

        </div>

        <?php

          $crearPeriodo = new ControladorCurricula();
          $crearPeriodo -> ctrCrearPeriodo();

        ?>
        
      </form>

    </div>

  </div>

</div>
<!--=====================================
MODAL EDITAR CATEGORÍA
======================================-->

<div id="modalEditarPeriodo" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar Periodo</h4>

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
                
                <input type="hidden"  name="idPeriodo" id="idPeriodo" required>

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

          $editarPeriodo = new ControladorCurricula();
          $editarPeriodo -> ctrEditarPeriodos();

      ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarPeriodo = new ControladorCurricula();
  $borrarPeriodo -> ctrBorrarCurricula();

?>




