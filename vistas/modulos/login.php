<!--<div id="back"></div>
<div class="login-box">
  <div class="login-logo">
        <img src="vistas/img/plantilla/logo-blanco-bloque.png" class="img-responsive" style="padding:30px 100px 0px 100px">
  </div>-->
    <div class="login-form">
        <form method="post">
            <div class="avatar">
                <!--<img src="../img/plantilla/icono-blanco.png" class="img-responsive" alt="">-->
            </div>
            <h2 class="text-center">Iniciar Sesión</h2>
            <div class="form-group has-feedback">
                <input type="text" class="form-control" name="ingUsuario" placeholder="Usuario" required>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" name="ingPassword" placeholder="Contraseña" required>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary btn-lg btn-block">Iniciar Sesión</button>
            </div>
            <div class="clearfix">
                <label class="pull-left checkbox-inline"><input type="checkbox">Recordar sesión</label>
                <a href="#" class="pull-right">¿Olvidaste tu contraseña?</a>
            </div>

            <?php

            $login = new ControladorUsuarios();
            $login -> ctrIngresoUsuario();

            ?>
        </form>
    </div>
