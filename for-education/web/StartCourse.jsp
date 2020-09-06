<!DOCTYPE html>
<html>
<head>
	<!-- Este es el link de bootstrap-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<title>Inicio del curso</title>

	<!-- Esto es para el scroll animated-->
	<script src="https://unpkg.com/scrollreveal"></script>

	<!-- Esto es de google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,300;0,400;1,200;1,300&display=swap" rel="stylesheet">

	<!-- Este es el kit de fontAwesome -->
	<script src="https://kit.fontawesome.com/f7f3b1c29f.js" crossorigin="anonymous"></script>

	<!-- Este es el link de nuestro css personalizado-->
	<link rel="stylesheet" type="text/css" href="css/general.css">

	<!-- Añadimos jquery-->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</head>
<body>

	<!-- Este es el navBar-->
	<nav class="navbar navbar-expand-md navbar-light bg-light">
		<div class="container">
			<a href="index.html" class="navbar-brand">
				DeepTure
			</a>
		<button class="navbar-toggler" data-toggle="collapse" data-target="#secondNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
			<div class="collapse navbar-collapse" id="secondNavbar">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="index.html">Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="home-courses.html">Cursos</a></li>
					<li class="nav-item"><a class="nav-link" href="my-courses.html">Mis cursos</a></li>
					<li class="nav-item"><a class="nav-link" href="description-course-create.html">Crear curso</a></li>
					<li class="nav-item"><a class="nav-link" href="my-plan-formation.html">Mi plan de formación</a></li>
				</ul>
				<form class="form-inline">
					<input type="text" class="form-control" placeholder="Course">
					<button class="btn btn-outline-primary ml-2">Buscar</button>
				</form>
			</div>
		</div>
	</nav>

	<!-- Esto es la zona de descripccion del curso-->

	<section class="container my-5">
		<div class="row">
			<div class="col-md-5">
				<h3>Creación de API'S con GO</h3>
				<!-- Subtitulo-->
				<p>Aprende a integrar y a usar las bases de datos en GO</p>
				<p>Nivel: Intermedio</p>
				<p>Duración: 4-9 hrs</p>
				<p>Con este curso aprenderás a integrar y usar las
				 bases de datos PostgreSQL y MySQL con Go, 
				a través del paquete database/SQL, el ORM Gorm 
				y el patrón DAO.
				Go es un lenguaje de programación concurrente 
				y compilado inspirado en la sintaxis de C, que 
				intenta ser dinámico como Python y con el 
				rendimiento de C o C++. Ha sido desarrollado 
				por Google, y sus diseñadores iniciales fueron 
				Robert Griesemer, Rob Pike y Ken Thompson.</p>
				<br>
				<a href="Course.html" class="btn btn-primary px-4 mb-3">Comenzar curso</a>
			</div>

			<div class="col-md-6">
				<img src="img/go.jpg" style="width: 100%">
				<p class="m-4">Módulos: <br>
				1.- paquete sql y drivers de conexión<br>
				2.- CRUD postgres SQL (practico)<br>
				3.- CRUD MySQL (practico)<br>
				4.- ORM (practico)</p>
				<h5>Video de introducción al curso</h5>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/3kiqUB2whAM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</div>
			<div class="col-md-1">
				<div class="circle bg-white p-1 text-center" style="border-radius: 120px; cursor: pointer;">
					<a href="#contact" class="m-3" style="font-size: 25px; color: #949494;"><i class="far fa-envelope"></i></a>
				</div>
			</div>
		</div>
	</section>

	<!-- Calificacion del curso-->
	<section class="bg-white">
		<div class="container pt-2" id="contact">
			<div class="row">
				<div class="col-md-6">
					<h4>Califica este curso</h4>
					<p style="font-size: 17px; cursor: pointer;"><i class="fas fa-star 1 cal"></i><i class="fas fa-star 2 cal" onclick="two()"></i><i class="fas fa-star 3 cal"></i><i class="fas fa-star 4 cal"></i><i class="fas fa-star 5 cal"></i></p>
					<textarea class="form-control" rows="3"></textarea><br>
					<input type="button" value="Publicar" class="btn btn-primary m-2 px-5">
				</div>
				<div class="col-md-6 text-center">
					<p style="font-size: 25px">Calificación general de este curso</p>
					<p style="font-size: 25px;"><span style="color: #E2A809;"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></span><i class="fas fa-star"></i><i class="fas fa-star"></i></p>
				</div>
			</div>
			<!-- Comentarios-->
			<hr>
			<div class="row">
				<p style="font-size: 25px">Comentarios:</p>
				<br>
				<p>Kevin jafet:<br>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Kevin jafet:<br>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		//Estev codigo sirve para hacer que el scroll no sea muy brusco
		document.querySelectorAll('a[href^="#"]').forEach(anchor => {
		    anchor.addEventListener('click', function (e) {
		        e.preventDefault();

		        document.querySelector(this.getAttribute('href')).scrollIntoView({
		            behavior: 'smooth'
		        });
		    });
		});

		$(document).ready(function(){
			$('.cal').mouseout(function(){
				$('.cal').css({color:'black'});
			});

			//esto es para cuando entra a una estrella
			$('.1').mouseover(function(){
				$('.1').css({color:'#E2A809'});
			});
			$('.2').mouseover(function(){
				$('.1').css({color:'#E2A809'});
				$('.2').css({color:'#E2A809'});
			});
			$('.3').mouseover(function(){
				$('.1').css({color:'#E2A809'});
				$('.2').css({color:'#E2A809'});
				$('.3').css({color:'#E2A809'});
			});
			$('.4').mouseover(function(){
				$('.1').css({color:'#E2A809'});
				$('.2').css({color:'#E2A809'});
				$('.3').css({color:'#E2A809'});
				$('.4').css({color:'#E2A809'});
			});
			$('.5').mouseover(function(){
				$('.1').css({color:'#E2A809'});
				$('.2').css({color:'#E2A809'});
				$('.3').css({color:'#E2A809'});
				$('.4').css({color:'#E2A809'});
				$('.5').css({color:'#E2A809'});
			});
		});
		
	</script>

</body>
<!--Estos js son de bootsrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>