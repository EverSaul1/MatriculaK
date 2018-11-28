<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar discapacidades
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>
      
      <li class="active">Administrar discapacidades</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarDiscapacidad">
          
          Agregar discapacidad

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Descripcion</th>
           <th>comentario</th>
          
           <th>Acciones</th>

         </tr> 

        </thead>

        <tbody>
          
          <?php

          $item = null;
          $valor = null;

          $discapacidades = ControladorDiscapacidades::ctrMostrarDiscapacidades($item, $valor);

          foreach ($discapacidades as $key => $value) {
           
            echo ' <tr>

                    <td>'.($key+1).'</td>

                    <td class="text-uppercase">'.$value["descripcion"].'</td>
                    <td class="text-uppercase">'.$value["comentario"].'</td>

                    <td>
                    <div class="btn-group">
                          
                        <button class="btn btn-warning btnEditarDiscapacidad" idDiscapacidad="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarDiscapacidad"><i class="fa fa-pencil"></i></button>


                        <button class="btn btn-danger btnEliminarDiscapacidad" idDiscapacidad="'.$value["id"].'"><i class="fa fa-times"></i></button>
                        

                        

                         

                       

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

<div id="modalAgregarDiscapacidad" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar discapacidad</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE -->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-user"></i></span> 

                <input type="text" class="form-control input-lg" name="nuevaDescripcion" placeholder="Ingresar descripcion" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL USUARIO -->

             <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-key"></i></span> 

                <input type="text" class="form-control input-lg" name="nuevoComentario" placeholder="Ingresar comentario" required>

              </div>

            </div>

           

           

            <!-- ENTRADA PARA SUBIR FOTO -->

             

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar </button>

        </div>

        <?php

          $crearDiscapacidad = new ControladorDiscapacidades();
          $crearDiscapacidad -> ctrCrearDiscapacidad();

        ?>


      </form>

    </div>

  </div>

</div>
<!--=====================================
MODAL EDITAR CATEGORÍA
======================================-->

<div id="modalEditarDiscapacidad" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar Discapacidad</h4>

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
                
                  <input type="hidden"  id="idDiscapacidad" name="idDiscapacidad">

              </div>

            </div>

            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-th"></i></span> 

                <input type="text" class="form-control input-lg" name="editarComentario" id="editarComentario" required>

                

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

          $editarDiscapacidad = new ControladorDiscapacidades();
          $editarDiscapacidad -> ctrEditarDiscapacidades();

        ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarDiscapacidad = new ControladorDiscapacidades();
  $borrarDiscapacidad -> ctrBorrarDiscapacidad();

?>




