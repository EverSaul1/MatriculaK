<div class="content-wrapper">

  <section class="content-header">
    
    <h1>
      
      Administrar Grupos
    
    </h1>

    <ol class="breadcrumb">
      
      <li><a href="inicio"><i class="fa fa-dashboard"></i>Inicio</a></li>
      
      <li class="active">Administrar Grupos</li>
    
    </ol>

  </section>

  <section class="content">

    <div class="box">

      <div class="box-header with-border">
  
        <button class="btn btn-primary" data-toggle="modal" data-target="#modalAgregarGrupo">
          
          Agregar Grupo

        </button>

      </div>

      <div class="box-body">
        
       <table class="table table-bordered table-striped dt-responsive tablas">
         
        <thead>
         
         <tr>
           
           <th style="width:10px">#</th>
           <th>Grupo</th>
           <th>Descripcion</th>
           <th>Estado</th>
           <th>Periodo</th>
           <th>Ambiente</th>
           <th>Nivel</th>
           <th>Grado</th>
           <th>Seccion</th>
           <th>Acciones</th>

         </tr> 

        </thead>

        <tbody>
          
          <?php

          $grupos = ControladorCurricula::ctrMostrarGrupos
              ("grupo","ambiente","periodo","seccion","grado","nivel",null,null);
            
          foreach ($grupos as $key => $value) {
           
            echo ' <tr>

                <td>'.($key+1).'</td>
<td class="text-uppercase">'.$value["nombreNivel"]." - ".$value["nombreGrado"]." - ".$value["nombreSeccion"].'</td>
                <td class="text-uppercase">'.$value["descripcion"].'</td>'
                ;
              
          if($value["estado"] != 0){

            echo '<td><button class="btn btn-success btn-xs btnActivar" idT="'.$value["id"].'" estadoT="0" t="grupo">Activado</button></td>';

          }else{
              
            echo '<td><button class="btn btn-danger btn-xs btnActivar" idT="'.$value["id"].'" estadoT="1" t="grupo">Desactivado</button></td>';

          }             

          echo '<td>'.$value["dePe"].'</td>
                <td>'.$value["ambiente"].'</td>
                <td>'.$value["nombreNivel"].'</td>
                <td>'.$value["nombreGrado"].'</td>
                <td>'.$value["nombreSeccion"].'</td>

                <td>
                <div class="btn-group">

                    <button class="btn btn-warning btnEditarGrupo" t="grupo" idT="'.$value["id"].'" data-toggle="modal" data-target="#modalEditarGrupo"><i class="fa fa-pencil"></i></button>

                    <button class="btn btn-danger btnEliminarTabla" t="grupo" idTabla="'.$value["id"].'"><i class="fa fa-times"></i></button>

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

<div id="modalAgregarGrupo" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar Nuevo Grupo</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL DESCRIPCION DEL Grupo-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control input-lg" name="gDescripcion" placeholder="Ingrese descripción del grupo" required>

              </div>

            </div>

            
        <!-- ENTRADA PARA SELECCIONAR UN PERIODO -->
            <div class="form-group">
              
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-graduation-cap"></i></span>    
               
                <select class="form-control select2" name="periodoG" style="width: 100%;" required>
                  
                  <option value="">Seleccione un Periodo</option>

        <?php 
        $periodos = ControladorCurricula::ctrMostrarCurricula("periodo",null,null);
        foreach ($periodos as $key => $value) {
            echo '<option value="'.$value["id"].'" >'.$value["descripcion"].'</option>';
            }
        ?>
  
                </select>

              </div>

            </div>
            
            
        <!-- ENTRADA PARA SELECCIONAR NIVEL -->
            <div class="form-group">
              
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-graduation-cap"></i></span>    
               
                <select class="form-control select2" name="nivelG" style="width: 100%;" required>
                  
                 <option value="">Seleccione un Nivel</option>

        <?php 
        $niveles = ControladorCurricula::ctrMostrarCurricula("nivel",null,null);
        foreach ($niveles as $key => $value) {
            echo '<option value="'.$value["id"].'" >'.$value["nombreNivel"].'</option>';
            }
        ?>
  
                </select>

              </div>

            </div>
            
                        
        <!-- ENTRADA PARA SELECCIONAR GRADO -->
            <div class="form-group">
              
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-graduation-cap"></i></span>    
               
                <select class="form-control select2" name="gradoG" style="width: 100%;" required>
                  
                  <option value="">Selecciones un Grado</option>

        <?php 
        $grados = ControladorCurricula::ctrMostrarCurricula("grado",null,null);
        foreach ($grados as $key => $value) {
            echo '<option value="'.$value["id"].'" >'.$value["nombreGrado"].'</option>';
            }
        ?>
  
                </select>

              </div>

            </div>
            
            
                        
        <!-- ENTRADA PARA SELECCIONAR SECCION -->
            <div class="form-group">
              
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-graduation-cap"></i></span>    
               
                <select class="form-control select2" name="seccionG" style="width: 100%;" required>
                  
                  <option value="">Seleccione una sección</option>

        <?php 
        $secciones = ControladorCurricula::ctrMostrarCurricula("seccion",null,null);
        foreach ($secciones as $key => $value) {
            echo '<option value="'.$value["id"].'" >'.$value["nombreSeccion"].'</option>';
            }
        ?>
  
                </select>

              </div>

            </div>
            
                        
        <!-- ENTRADA PARA SELECCIONAR AMBIENTE -->
            <div class="form-group">
              
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-graduation-cap"></i></span>    
               
                <select class="form-control select2" name="ambienteG" style="width: 100%;" >
                  
                  <option value="">Seleccion un ambiente</option>

        <?php 
        $ambientes = ControladorCurricula::ctrMostrarCurricula("ambiente",null,null);
        foreach ($ambientes as $key => $value) {
            echo '<option value="'.$value["id"].'" >'.$value["ambiente"]." - ".$value["descripcion"].'</option>';
            }
        ?>
  
                </select>

              </div>

            </div>
            
    
            
          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar Grupo</button>

        </div>

        <?php

          $crearGrupo = new ControladorCurricula();
          $crearGrupo -> ctrCrearGrupo();

        ?>
        
      </form>

    </div>

  </div>

</div>
<!--=====================================
MODAL EDITAR CATEGORÍA
======================================-->

<div id="modalEditarGrupo" class="modal fade" role="dialog">
  
  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar Grupo</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL DESCRIPCION DEL Grupo-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 

                <input type="text" class="form-control" id="egDescripcion"  placeholder="Ingrese descripción del grupo" required>
                <input type="hidden" name="idEGrupo" id="idEGrupo" required>

              </div>

            </div>
            
            <!-- ENTRADA PARA EL DESCRIPCION DEL Grupo-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 
                <select class="form-control" name="eperiodoG" style="width: 100%;" required>
                  
                  <option id="eperiodoG"></option>
                <?php 
                foreach ($periodos as $key => $value) {
                echo '<option value="'.$value["id"].'" >'.$value["descripcion"].'</option>';
                }
                ?>
                </select>

              </div>

            </div>
            
            <!-- ENTRADA PARA EL DESCRIPCION DEL Grupo-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 
                <select class="form-control" name="enivelG" style="width: 100%;" required>
                  
                  <option id="enivelG"></option>
                <?php 
                foreach ($niveles as $key => $value) {
                echo '<option value="'.$value["id"].'" >'.$value["nombreNivel"].'</option>';
                }
                ?>
                </select>

              </div>

            </div>
            
            <!-- ENTRADA PARA EL DESCRIPCION DEL Grupo-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 
                <select class="form-control" name="egradoG" style="width: 100%;" required>
                  
                  <option id="egradoG"></option>
                <?php 
                foreach ($grados as $key => $value) {
                echo '<option value="'.$value["id"].'" >'.$value["nombreGrado"].'</option>';
                }
                ?>
                </select>

              </div>

            </div>
            
            <!-- ENTRADA PARA EL DESCRIPCION DEL Grupo-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 
                <select class="form-control" name="eseccionG" style="width: 100%;" required>
                  
                  <option id="eseccionG"></option>
                <?php 
                foreach ($secciones as $key => $value) {
                echo '<option value="'.$value["id"].'" >'.$value["nombreSeccion"].'</option>';
                }
                ?>
                </select>

              </div>

            </div>
            
            <!-- ENTRADA PARA EL DESCRIPCION DEL Grupo-->
            
            <div class="form-group">
              
              <div class="input-group">
              
                <span class="input-group-addon"><i class="fa fa-align-left"></i></span> 
                <select class="form-control" name="eambienteG" style="width: 100%;" required>
                  
                  <option id="eambienteG"></option>
                <?php 
                foreach ($ambientes as $key => $value) {
                echo '<option value="'.$value["id"].'" >'.$value["ambiente"]." - ".$value["descripcion"].'</option>';
                }
                ?>
                </select>

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

          $editarGrupo = new ControladorCurricula();
          $editarGrupo -> ctrEditarGrupos();

      ?> 

      </form>

    </div>

  </div>

</div>

<?php

  $borrarGrupo = new ControladorCurricula();
  $borrarGrupo -> ctrBorrarCurricula();

?>




