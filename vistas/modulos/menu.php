<aside class="main-sidebar">

	 <section class="sidebar">

		<ul class="sidebar-menu">

		<?php
            echo '<!--<li class="active">-->
                <li>
				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>';
            if($_SESSION["roles"][0]["idRol"] == "1" || $_SESSION["roles"][0]["idRol"] == "2"){

			echo '<li class="treeview">

				<a href="#">

					<i class="fa fa-tasks"></i>
					
					<span>Curricula</span>
					
					<span class="pull-right-container">
					
						<i class="fa fa-angle-left pull-right"></i>

					</span>

				</a>

				<ul class="treeview-menu">
					
					<li>

						<a href="periodos">
							
							<i class="fa fa-circle-o"></i>
							<span>Periodos</span>

						</a>

					</li>

					<li>

						<a href="ambientes">
							
							<i class="fa fa-circle-o"></i>
							<span>Ambientes</span>

						</a>

					</li>
					<li>

						<a href="seccions">
							
							<i class="fa fa-circle-o"></i>
							<span>Secciones</span>

						</a>

					</li>
					<li>

						<a href="grados">
							
							<i class="fa fa-circle-o"></i>
							<span>Grados</span>

						</a>

					</li>
                    <li>

						<a href="nivels">
							
							<i class="fa fa-circle-o"></i>
							<span>Niveles</span>

						</a>

					</li>
                    <li>

						<a href="grupos">
							
							<i class="fa fa-circle-o"></i>
							<span>Grupos</span>

						</a>

					</li>';

//					if($_SESSION["perfil"] == "Administrador"){
//
//						date_default_timezone_set('America/Bogota');
//
//						$fechaHasta = date('Y-m-d');
//
//						$fechaDesde = date('Y-m-d', strtotime('-1 month'));
//
//						echo '<li>
//
//						<a href="index.php?ruta=reportes&fechaInicial='.$fechaDesde.'&fechaFinal='.$fechaHasta.'"><i class="fa fa-circle-o"></i>
//						<span>Reporte de ventas</span>
//
//						</a>
//
//					</li>';
//
//				}

				echo '</ul>

			</li>';

			}
            
			if($_SESSION["roles"][0]["idRol"] == "1"){

			echo '<li>

				<a href="usuarios">

					<i class="fa fa-user"></i>
					<span>Usuarios</span>

				</a>

			</li>
			<li>

				<a href="personas">

					<i class="fa fa-user-plus"></i>
					<span>Persona</span>

				</a>

			</li>
			<li>

				<a href="discapacidades">

					<i class="fa fa-wheelchair-alt"></i>
					<span>Discapacidades</span>

				</a>

			</li>';

			}

            
            
    		if($_SESSION["roles"][0]["idRol"] == "1" || $_SESSION["roles"][0]["idRol"] == "2"){

			echo '<li>

				<a href="matriculas">

					<i class="fa fa-book"></i>
					<span>Matricula</span>

				</a>

			</li>';

			}

		?>

		</ul>

	 </section>

</aside>