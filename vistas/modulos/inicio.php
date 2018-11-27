<!--=====================================
PÁGINA DE INICIO
======================================-->
<!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

      <section class="content-header container" >
          <h1>
              Bienvenido <?php echo $_SESSION["nombre"]?>
              <p><small>Panel de Control</small></p>
          </h1>
          <ol class="breadcrumb">
              <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
              <li class="active">Pagina Principal</li>
          </ol>
      </section>
      <div class="container">
          <h3 class="text-center bg-red" style="border-radius:12px; box-shadow:0 0 10px 0 black; margin-left: 500px;
          width: 50%;height: 30px;">Recordar<strong>Plan Maestro de Desarrollo Espiritual</strong></h3>
      </div>
    <div class="container" style="">
      <div class="col-md-4">
          <!-- Widget: user widget style 1 -->
          <div class="box box-widget widget-user">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <div class="widget-user-header bg-red">
                  <h3 class="widget-user-username text-center text-bold"><?php echo $_SESSION["nombre"]?></h3>
              </div>
              <div class="widget-user-image img-circle">
                  <?php
                  if($_SESSION["foto"] != ""){

                      echo '<img src="'.$_SESSION["foto"].'" class="user-image img-circle">';

                  }else{


                      echo '<img src="vistas/img/usuarios/default/anonymous.png" class="user-image">';

                  }


                  ?>
              </div>
              <div class="box-footer">
                  <div class="row">
                      <div class="col-sm-4 border-right">
                          <div class="description-block">
                              <h5 class="description-header">3,200</h5>
                              <span class="description-text">SALES</span>
                          </div>
                          <!-- /.description-block -->
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-4 border-right">
                          <div class="description-block">
                              <h5 class="description-header">13,000</h5>
                              <span class="description-text">FOLLOWERS</span>
                          </div>
                          <!-- /.description-block -->
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-4">
                          <div class="description-block">
                              <h5 class="description-header">35</h5>
                              <span class="description-text">PRODUCTS</span>
                          </div>
                          <!-- /.description-block -->
                      </div>
                      <!-- /.col -->
                  </div>
                  <!-- /.row -->
              </div>
          </div>
          <!-- /.widget-user -->
      </div>
          <div class="col-md-4">
              <!-- Info Boxes Style 2 -->
              <div class="info-box bg-yellow">
                  <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>

                  <div class="info-box-content">
                      <span class="info-box-text">Inventory</span>
                      <span class="info-box-number">5,200</span>

                      <div class="progress">
                          <div class="progress-bar" style="width: 50%"></div>
                      </div>
                      <span class="progress-description">
                    50% Increase in 30 Days
                  </span>
                  </div>
                  <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
              <div class="info-box bg-green">
                  <span class="info-box-icon"><i class="ion ion-ios-heart-outline"></i></span>

                  <div class="info-box-content">
                      <span class="info-box-text">Mentions</span>
                      <span class="info-box-number">92,050</span>

                      <div class="progress">
                          <div class="progress-bar" style="width: 20%"></div>
                      </div>
                      <span class="progress-description">
                    20% Increase in 30 Days
                  </span>
                  </div>
                  <!-- /.info-box-content -->
              </div>
          </div>
          <div class="col-md-4">
              <!-- /.info-box -->
              <div class="info-box bg-red">
                  <span class="info-box-icon"><i class="ion ion-ios-cloud-download-outline"></i></span>

                  <div class="info-box-content">
                      <span class="info-box-text">Downloads</span>
                      <span class="info-box-number">114,381</span>

                      <div class="progress">
                          <div class="progress-bar" style="width: 70%"></div>
                      </div>
                      <span class="progress-description">
                    70% Increase in 30 Days
                  </span>
                  </div>
                  <!-- /.info-box-content -->
              </div>
              <!-- /.info-box -->
              <div class="info-box bg-aqua">
                  <span class="info-box-icon"><i class="ion-ios-chatbubble-outline"></i></span>

                  <div class="info-box-content">
                      <span class="info-box-text">Direct Messages</span>
                      <span class="info-box-number">163,921</span>

                      <div class="progress">
                          <div class="progress-bar" style="width: 40%"></div>
                      </div>
                      <span class="progress-description">
                    40% Increase in 30 Days
                  </span>
                  </div>
                  <!-- /.info-box-content -->
              </div>
            </div>
      </div>
      <div class="container bg-blue-gradient" style="padding: 30px; border-radius: 12px; box-shadow: 0 0 12px 0 black">
          <h2 class="title-page text-white text-center text-bold">Accesos Directos</h2>
                  <div class="col-lg-3 col-xs-6">
                      <!-- small box -->
                      <div class="small-box bg-green">
                          <div class="inner">
                              <h3>Usuario</h3>
                              <p>Sistema</p>
                          </div>
                          <div class="icon">
                              <i class="fa fa-user"></i>
                          </div>
                          <a href="/matricula-kalbertmatter/usuarios" class="small-box-footer">Ver más <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
                  <div class="col-lg-3 col-xs-6">
                      <div class="small-box bg-primary">
                          <div class="inner">
                              <h3 >Alumno</h3>
                              <p>Matricula</p>
                          </div>
                          <div class="icon">
                              <i class="fa  fa-book"></i>
                          </div>
                          <a href="/matricula-kalbertmatter/matriculas" class="small-box-footer">Ver más <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-xs-6">
                      <!-- small box -->
                      <div class="small-box bg-aqua">
                          <div class="inner">
                              <h3>Periodo</h3>
                              <p>Academico</p>
                          </div>
                          <div class="icon">
                              <i class="fa fa-calendar"></i>
                          </div>
                          <a href="/matricula-kalbertmatter/periodos" class="small-box-footer">Ver más <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-xs-6">
                      <!-- small box -->
                      <div class="small-box bg-purple">
                          <div class="inner">
                              <h3>Pagos</h3>
                              <p>Contabilidad</p>
                          </div>
                          <div class="icon">
                              <i class="fa fa-money"></i>
                          </div>
                          <a href="#" class="small-box-footer">Ver más <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-xs-6">
                      <!-- small box -->
                      <div class="small-box bg-red">
                          <div class="inner">
                              <h3>Areas</h3>
                              <p>Ambiente</p>
                          </div>
                          <div class="icon">
                              <i class="fa fa-institution"></i>
                          </div>
                          <a href="#" class="small-box-footer">Ver más <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-xs-6">
                      <!-- small box -->
                      <div class="small-box bg-maroon">
                          <div class="inner">
                              <h3>Nivel</h3>
                              <p>Academico</p>
                          </div>
                          <div class="icon">
                              <i class="fa  fa-graduation-cap"></i>
                          </div>
                          <a href="matricula-kalbertmatter/nivels" class="small-box-footer">Ver más <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-xs-6">
                      <!-- small box -->
                      <div class="small-box bg-orange">
                          <div class="inner">
                              <h3>Alumno</h3>
                              <p>Asistencia</p>
                          </div>
                          <div class="icon">
                              <i class="fa  fa-clock-o"></i>
                          </div>
                          <a href="#" class="small-box-footer">Ver más <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-xs-6">
                      <!-- small box -->
                      <div class="small-box bg-teal">
                          <div class="inner">
                              <h3>Config</h3>
                              <p>Sistema</p>
                          </div>
                          <div class="icon">
                              <i class="fa fa-gears "></i>
                          </div>
                          <a href="#" class="small-box-footer">Ver más <i class="fa fa-arrow-circle-right"></i></a>
                      </div>
                  </div>
              </div>
      <br><br><br><br><br>
          </div>
