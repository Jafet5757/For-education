<!DOCTYPE html>
<html>
<head>
	<!-- Este es el link de bootstrap-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<title>Curso de java</title>

	<!-- Esto es para el scroll animated-->
	<script src="https://unpkg.com/scrollreveal"></script>

	<!-- Esto es de google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,300;0,400;1,200;1,300&display=swap" rel="stylesheet">

	<!-- Este es el kit de fontAwesome -->
	<script src="https://kit.fontawesome.com/f7f3b1c29f.js" crossorigin="anonymous"></script>

	<!-- Este es el link de nuestro css personalizado-->
	<link rel="stylesheet" type="text/css" href="css/general.css">
</head>
<body>

	<!-- Desarrollador: Kevin Jafet
		 Fecha: 02/08/2020 08:47 PM
	-->

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
					<li class="nav-item active"><a class="nav-link" href="#">Crear curso</a></li>
					<li class="nav-item"><a class="nav-link" href="my-plan-formation.html">Mi plan de formación</a></li>
				</ul>
				<form class="form-inline">
					<input type="text" class="form-control" placeholder="Course">
					<button class="btn btn-outline-primary ml-2">Buscar</button>
				</form>
			</div>
		</div>
	</nav>

	<form class="container bg-white p-5 mt-md-5 border-redond-md shadow-box" id="formula" action="course-mode-edition.html">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4">Nombre del curso</label>
      			<input type="text" class="form-control" id="inputEmail4">
			</div>
			<div class="form-group col-md-6">
				<label for="nc">Nombre del creador del curso (creador de los videos)</label>
				<input type="text" class="form-control" id="nc">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label>Duración:</label>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="duration" id="exampleRadios1" value="option1" checked>
				  <label class="form-check-label" for="exampleRadios1">
				    15-30 min
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input" type="radio" name="duration" id="exampleRadios2" value="option2">
				  <label class="form-check-label" for="exampleRadios2">
				    30-60 min
				  </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="duration" id="two" value="option2">
				    <label class="form-check-label" for="two">
				      1-2 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="duration" id="two" value="option2">
				    <label class="form-check-label" for="two">
				      2-4 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="duration" id="two" value="option2">
				    <label class="form-check-label" for="two">
				      4-9 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="duration" id="two" value="option2">
				    <label class="form-check-label" for="two">
				      9-13 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="duration" id="two" value="option2">
				    <label class="form-check-label" for="two">
				      13-20 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input" type="radio" name="duration" id="two" value="option2">
				    <label class="form-check-label" for="two">
				      más de 20 hrs
				    </label>
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="cc">Canal de youtube del creador</label>
				<input type="text" class="form-control" id="cc">
				<br>
				<label for="sc">Subtitulo del curso (trate de describir con unas palabras el curso)</label>
				<input type="text" class="form-control" id="sc">
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="ui">URL de la imagen</label>
				<input type="text" class="form-control" id="ui">
				<br><br>
				<label>Nivel:</label>
				<div class="form-check">
					 <input class="form-check-input" type="radio" name="Level" id="avan" value="option1">
					 <label class="form-check-label" for="avan">
					   Avanzado
					 </label>
				</div>
				<div class="form-check">
					 <input class="form-check-input" type="radio" name="Level" id="int" value="option1">
					 <label class="form-check-label" for="int">
					   Intermedio
					 </label>
				</div>
				<div class="form-check">
					 <input class="form-check-input" type="radio" name="Level" id="prin" value="option1" checked>
					 <label class="form-check-label" for="prin">
					   Principiante
					 </label>
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="exampleFormControlTextarea1">Descripcion del curso</label>
    			<textarea class="form-control" id="exampleFormControlTextarea1" rows="6"></textarea>
    			<input type="submit" value="Crear curso" class="px-5 py-2 my-2 btn btn-primary">
			</div>
		</div>
	</form>

	<script type="text/javascript">
		ScrollReveal().reveal('#formula', { delay: 500 , origin:'bottom', distance: '500px'});
	</script>

</body>
<!--Estos js son de bootsrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>