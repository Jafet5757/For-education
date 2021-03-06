<!DOCTYPE html>
<html>
<head>
	<!-- Este es el link de bootstrap-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<title>Courses</title>

	<!-- Esto es para el scroll animated-->
	<script src="https://unpkg.com/scrollreveal"></script>

	<!-- Esto es de google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,300;0,400;1,200;1,300&display=swap" rel="stylesheet">

	<!-- Este es el kit de fontAwesome -->
	<script src="https://kit.fontawesome.com/f7f3b1c29f.js" crossorigin="anonymous"></script>

	<!-- Este es el link de nuestro css personalizado-->
	<link rel="stylesheet" type="text/css" href="css/general.css">
	<link rel="stylesheet" type="text/css" href="css/courses.css">
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
					<li class="nav-item"><a class="nav-link active" href="#">Cursos</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Mis cursos</a></li>
					<li class="nav-item"><a class="nav-link" href="description-course-create.html">Crear curso</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Mi plan de formación</a></li>
				</ul>
				<form class="form-inline">
					<input type="text" class="form-control" placeholder="Course">
					<button class="btn btn-outline-primary ml-2">Buscar</button>
				</form>
			</div>
		</div>
	</nav>

			<!-- Este es el carrusel-->
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" id="car">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="img/carrusel1.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="img/carrusel2.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="img/carrusel3.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			    	<img src="img/carrusel4.jpg" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>

	<!-- Este es la xzona de los cursos-->
	<article class="mb-2">
		<div class="row">
			<a href="#main" class="btn btn-light d-md-none mx-auto my-3" data-toggle="collapse">Ocultar/Mostrar</a>
			<div class="col-md-2 collapse show" id="main">
				<div class="card section-card-filters" style="width: 18rem;">
					<div class="card-body">
						Tipo:
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
							<label class="form-check-label" for="defaultCheck1">
						    	Programación
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check2">
							<label class="form-check-label" for="check2">
						    	Fisica
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check3">
							<label class="form-check-label" for="check3">
						    	Matematicas
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check4">
							<label class="form-check-label" for="check4">
						    	Diseño
							</label>
						</div>
						<br>
						Duración:
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check5">
							<label class="form-check-label" for="check5">
						    	15-30min
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check6">
							<label class="form-check-label" for="check6">
						    	30-60min
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check7">
							<label class="form-check-label" for="check7">
						    	1-2hrs
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check8">
							<label class="form-check-label" for="check8">
						    	2-4hrs
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check10">
							<label class="form-check-label" for="check10">
						    	4-9hrs
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check11">
							<label class="form-check-label" for="check11">
						    	9-13hrs
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check12">
							<label class="form-check-label" for="check12">
						    	13-20hrs
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check13">
							<label class="form-check-label" for="check13">
						    	Todo
							</label>
						</div>

						Valoracón:
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check14">
							<label class="form-check-label" for="check14">
						    	Cinco estrellas
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="chech15">
							<label class="form-check-label" for="chech15">
						    	Cuatro estrellas
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check16">
							<label class="form-check-label" for="check16">
						    	Tres estrellas
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check17">
							<label class="form-check-label" for="check17">
						    	Dos estrellas
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check18">
							<label class="form-check-label" for="check18">
						    	Una estrellas
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check19">
							<label class="form-check-label" for="check19">
						    	Sin estrellas
							</label>
						</div>

						Nivel
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check20">
							<label class="form-check-label" for="check20">
						    	Pirncipiante
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check21">
							<label class="form-check-label" for="check21">
						    	Intermedio
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="check22">
							<label class="form-check-label" for="check22">
						    	Avanzado
							</label>
						</div>
					</div>
				</div>
			</div>
			<!-- Aquí acaba la zona de filtros-->

				<div class="col-md-8">
					<div class="row">
						<div class="col-md-3 my-3 mx-5">
							<div class="card course-card pointer" style="width: 18rem;">
							  <img src="img/bitcoin.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title text-center">Curso de java</h5>
							    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
							    <center>
							    	<div class="progress">
									  <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 36%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
									36%
							    </center>
							  </div>
							</div>
						</div>

						<div class="col-md-3 my-3 mx-5">
							<div class="card course-card" style="width: 18rem;">
							  <img src="img/git.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title text-center">Curso de java</h5>
							    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
							    <center><a href="StartCourse.html" class="btn btn-primary px-4">Comenzar curso</a></center>
							  </div>
							</div>
						</div>

						<div class="col-md-3 my-3 mx-5">
							<div class="card course-card" style="width: 18rem;">
							  <img src="img/go.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title text-center">Curso de java</h5>
							    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
							    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
							  </div>
							</div>
					</div>

					<div class="row">
						<div class="col-md-3 my-3 mx-5">
							<div class="card course-card" style="width: 18rem;">
							  <img src="img/adobexd.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title text-center">Curso de java</h5>
							    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
							    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
							  </div>
							</div>
						</div>

						<div class="col-md-3 my-3 mx-5">
							<div class="card course-card" style="width: 18rem;">
							  <img src="img/ingles.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title text-center">Curso de java</h5>
							    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
							    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
							  </div>
							</div>
						</div>

						<div class="col-md-3 my-3 mx-5">
							<div class="card course-card" style="width: 18rem;">
							  <img src="img/python.jpg" class="card-img-top" alt="...">
							  <div class="card-body">
							    <h5 class="card-title text-center">Curso de java</h5>
							    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
							    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
							  </div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/php.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
							</div>

							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/wordpress.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
							</div>

							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/git.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
						</div>

						<div class="row">
							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/go.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
							</div>

							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/ingles.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
							</div>

							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/adobexd.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/go.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
							</div>

							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/ingles.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
							</div>

							<div class="col-md-3 my-3 mx-5">
								<div class="card course-card" style="width: 18rem;">
								  <img src="img/adobexd.jpg" class="card-img-top" alt="...">
								  <div class="card-body">
								    <h5 class="card-title text-center">Curso de java</h5>
								    <p class="card-text">Creado por: Kevin Jafet<br> Módulos:8 &nbsp;&nbsp; Duracion:9-13hrs</p>
								    <center><a href="#" class="btn btn-primary px-4">Comenzar curso</a></center>
								  </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</article>

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


</body>
<!--Estos js son de bootsrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>