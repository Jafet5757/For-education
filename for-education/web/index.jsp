<!DOCTYPE html>
<html>
<head>
	<!-- -->
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<!-- Este es el link de bootstrap-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>For education</title>

	<!-- Esto es para el scroll animated-->
	<script src="https://unpkg.com/scrollreveal"></script>

	<!-- Esto es de google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,300;0,400;1,200;1,300&display=swap" rel="stylesheet">

	<!-- Este es el kit de fontAwesome -->
	<script src="https://kit.fontawesome.com/f7f3b1c29f.js" crossorigin="anonymous"></script>

	<!-- Este es el link de nuestro css personalizado-->
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<!--Ya tenemos bootstrap 4, scroll librery, fuente de google-->

	<!-- Este es el navBar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="#">DeepTure</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Inicio</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="home-courses.jsp">Cursos</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="login.jsp">Iniciar sesion</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="logup.jsp">Registrarse</a>
	      </li>
	    </ul>
	  </div>
	</nav>

	<!--Header -->
	<header>
		<div class="container">
			<div class="row">
				<div class="col-md-6 justify-content-center header-content-left">
					<img src="img/edu1.png" style="width: 90%">
				</div>
				<div class="col-md-6 justify-content-center align-self-center header-content-right">
					<h3>Educación a distancia gratuita</h3>
					<p style="font-size: 17px">La primer plataforma de educación online en al que ganas dinero 
					dando cursos completamente gratuitos, ayudando a cientos de
					estudiantes. Comienza hoy mismo a estudiar, a enseñar, a crecer.</p>
				</div>
			</div>
		</div>
	</header>

	<!-- Section-->

	<section class="section-one my-5 p-2">
		<div class="container">
			<div class="row m-4">
				<div class="col-2"></div>
				<div class="col-4 justify-content-center align-self-center">
					<p class="">Clases concretas, practicas y desde cualquier dispositivo</p>
				</div>
				<div class="col-4 section-one-row-col-img-right section-one-img-right">
					<img src="img/goals.png" style="width: 80%">
				</div>
				<div class="col-2"></div>
			</div>

			<div class="row m-4">
				<div class="col-2"></div>
				<div class="col-4 section-one-row-col-img-left section-one-img-left">
					<img src="img/certificate.png" style="width: 80%">
				</div>
				<div class="col-4 justify-content-center align-self-center">
					<p class="">Examen de certificacion.<br>Obtén certificacion al terminar los cursos comrobandólos con un examen</p>
				</div>
				<div class="col-2"></div>
			</div>

			<div class="row m-4">
				<div class="col-2"></div>
				<div class="col-4 justify-content-center align-self-center">
					<p class="">Comunidad educadora.<br><br>Toma cursos de la comunidad
					creadora de contenido y dispuesta 
					a ayudar</p>
				</div>
				<div class="col-4 section-one-row-col-img-right section-one-img-right">
					<img src="img/community.png" style="width: 80%">
				</div>
				<div class="col-2"></div>
			</div>
		</div>
	</section>


	<!-- Section info two-->
	<section class="info-two my-5">
		<div class="container">
			<div class="row">
				<div class="col-md-6 justify-content-center align-self-center info-two-content-left">
					<h3>Crea tus propios cursos y gana dinero</h3>
					<p>La plataforma es una adaptación de YouTube para la educación,
						sube tu contenido a YouTube y continua ganando dinero con las 
						visitas pero a través de nuestra plataforma mas especializada.</p>
					<a href="#" class="btn btn-primary px-4 py-2" style="margin-left: 30%">Crea tu curso</a><!--Este debe cambiar segun si tiene cuenta-->
				</div>
				<div class="col-md-6 info-two-content-right">
					<img src="img/edu3.png" style="width: 90%">
				</div>
			</div>
		</div>
	</section>


	<!--Footer -->
	<footer class="footer p-3">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="form-group">
						Correo de contacto<br>
						<input type="email" class="form-control" placeholder="name@example.com"><br>
						Sugerencias, agradecimientos y dudas:<br>
						<textarea class="form-control" rows="3"></textarea><br>
						<input type="button" class="btn btn-primary px-5" value="Enviar">
					</div>
				</div>
				<div class="col-md-5">
					<p class="footer-row-col-title" style="font-size: 20px">DeepTure</p>
					<p style="font-size: 16px">Transformamos la educación y tecnología ayudando a
					las nuevas generaciones que quieren, necesitan o desean aprender
					pero no cuentan con los recursos necesario<br> 
					<a href="#" class="footer-font"><i class="fab fa-facebook"></i></a> <a href="#" class="footer-font"><i class="fab fa-instagram"></i></a> <a href="#" class="footer-font"><i class="fab fa-github"></i></a></p>
				</div>
			</div>
		</div>
	</footer>

	<!-- Animacione sde inicio-->
	<script type="text/javascript">
		ScrollReveal().reveal('.header-content-left', { delay: 500 , origin:'left', distance: '100px'});
		ScrollReveal().reveal('.header-content-right', { delay: 500 , origin:'right', distance: '100px'});
		ScrollReveal().reveal('.section-one-img-right', { delay: 900 , origin:'left', distance: '300px'});
		ScrollReveal().reveal('.section-one-img-left', { delay: 900 , origin:'right', distance: '300px'});
		ScrollReveal().reveal('.info-two-content-left', { delay: 500 , origin:'left', distance: '100px'});
		ScrollReveal().reveal('.info-two-content-right', { delay: 500 , origin:'right', distance: '100px'});
	</script>

</body>
<!--Estos js son de bootsrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>