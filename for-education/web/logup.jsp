<!DOCTYPE html>
<html>
<head>
	<!-- Este es el link de bootstrap-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<title>LogUp</title>

	<!-- Esto es para el scroll animated-->
	<script src="https://unpkg.com/scrollreveal"></script>

	<!-- Esto es de google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,300;0,400;1,200;1,300&display=swap" rel="stylesheet">

	<!-- Este es el kit de fontAwesome -->
	<script src="https://kit.fontawesome.com/f7f3b1c29f.js" crossorigin="anonymous"></script>

	<!-- Este es el link de nuestro css personalizado-->
	<link rel="stylesheet" type="text/css" href="css/general.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>

	<!-- Este es el navBar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="index.html">DeepTure</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item">
	        <a class="nav-link" href="index.html">Inicio</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="home-courses.html">Cursos</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="login.html">Iniciar sesion</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link active" href="#">Registrarse</a>
	      </li>
	    </ul>
	  </div>
	</nav>

	<!-- Login-->

        <form class="mx-5 my-2" id="formula" action="UserController" method="post">
		<div class="container text-center p-3">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8  bg-white pb-5 form-content-components">
					Ingrese sus nombre(s)<br>
					<br>
					<div class="input-group input-group-sm">
						<div class="input-group-prepend">
						    <span class="input-group-text"><i class="far fa-user"></i></span>
						</div>
						<input type="text" name="nombre" class="form-control" required>
					</div>
					<br><br>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputNameF">Ingrese su apellido paterno</label>
							<div class="input-group input-group-sm">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-file-signature"></i></span>
								</div>
								<input type="text" name="app" class="form-control" id="inputNameF" required>
							</div>
						</div>
						<div class="form-group col-md-6">
							<label for="inputNameM">Ingrese su apellido materno</label> 
							<div class="input-group input-group-sm">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fas fa-file-signature"></i></span>
								</div>
								<input type="text" name="apm" class="form-control" id="inputNameM" required>
							</div>
						</div>
					</div>
					<br>
					<div class="form-row">
						<div class="form-group col">
							<label for="inputE">Ingrese su correo electronico</label>
							<div class="input-group input-group-sm">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="far fa-envelope"></i></span>
								</div>
								<input type="text" name="correo" id="inputE" class="form-control" required>
							</div>
						</div>
					</div>

					<br>
					Ingrese una contraseña
					<br><br>
					<div class="input-group input-group-sm">
						<div class="input-group-prepend">
						    <span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="p1" class="form-control" required>
					</div>

					<br>Ingrese de nuevo la contraseña
					<br>
					<div class="input-group input-group-sm">
						<div class="input-group-prepend">
						    <span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="p2" class="form-control" required>
                                                <input type="hidden" name="instruccion" value="newUser">
					</div>

					<br><br><br>
					<input type="submit" value="Registrarme" class="btn btn-primary px-5" required><br>
					<a href="login.html">Iniciar sesion</a>
				</div>
				<div class="col-md-2"></div>
			</div>
		</div>
	</form>

	<!-- Estas son las nimaciones de inicio-->
	<script type="text/javascript">
		ScrollReveal().reveal('#formula', { delay: 500 , origin:'bottom', distance: '500px'});
	</script>

</body>
<!--Estos js son de bootsrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>