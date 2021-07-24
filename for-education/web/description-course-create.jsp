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

	<!--Esto es para JQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

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
			<a href="index.jsp" class="navbar-brand">
				JKM
			</a>
		<button class="navbar-toggler" data-toggle="collapse" data-target="#secondNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
			<div class="collapse navbar-collapse" id="secondNavbar">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="home-courses.jsp">Cursos</a></li>
					<li class="nav-item"><a class="nav-link" href="my-courses.jsp">Mis cursos</a></li>
					<li class="nav-item active"><a class="nav-link" href="#">Crear curso</a></li>
					<li class="nav-item"><a class="nav-link" href="my-plan-formation.jsp">Mi plan de formación</a></li>
				</ul>
				<form class="form-inline">
					<input type="text" class="form-control" placeholder="Course">
					<button class="btn btn-outline-primary ml-2">Buscar</button>
				</form>
			</div>
		</div>
	</nav>

	<form class="container bg-white p-5 mt-md-5 border-redond-md shadow-box" id="formula" action="Coursecontroller" method="post">
		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="inputEmail4">Nombre del curso</label>
                                <input type="text" class="form-control" name="nombre" id="inputEmail4" required>
			</div>
			<div class="form-group col-md-6">
				<label for="nc">Nombre del creador del curso (creador de los videos)</label>
				<input type="text" class="form-control" name="creator" id="nc">
			</div>
		</div>
		<div class="form-row">
			<div class="form-group col-md-6">
				<label>Duración:</label>
				<div class="form-check">
				  <input class="form-check-input q-t" type="radio" name="duration" id="exampleRadios1" value="option1" checked>
				  <label class="form-check-label q-t" for="exampleRadios1">
				    15-30 min
				  </label>
				</div>
				<div class="form-check">
				  <input class="form-check-input t-s" type="radio" name="duration" id="exampleRadios2" value="option2">
				  <label class="form-check-label t-s" for="exampleRadios2">
				    30-60 min
				  </label>
				</div>
				<div class="form-check">
					<input class="form-check-input u-d" type="radio" name="duration" id="two" value="option2">
				    <label class="form-check-label u-d" for="two">
				      1-2 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input d-c" type="radio" name="duration" id="three" value="option2">
				    <label class="form-check-label d-c" for="three">
				      2-4 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input c-n" type="radio" name="duration" id="four" value="option2">
				    <label class="form-check-label c-n" for="four">
				      4-9 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input n-t" type="radio" name="duration" id="six" value="option2">
				    <label class="form-check-label n-t" for="six">
				      9-13 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input t-v" type="radio" name="duration" id="seven" value="option2">
				    <label class="form-check-label t-v" for="seven">
				      13-20 hrs
				    </label>
				</div>
				<div class="form-check">
					<input class="form-check-input mv" type="radio" name="duration" id="eight" value="option2">
				    <label class="form-check-label mv" for="eight">
				      más de 20 hrs
				    </label>
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="cc">Canal de youtube del creador</label>
				<input type="text" class="form-control" name="cc" id="cc" required>
				<br>
				<label for="sc">Subtitulo del curso (trate de describir con unas palabras el curso)</label>
				<input type="text" class="form-control" name="sb" id="sc">
			</div>
		</div>

		<div class="form-row">
			<div class="form-group col-md-6">
				<label for="ui">URL de la imagen</label>
				<input type="text" class="form-control" name="ui" id="ui" required>
				<br><br>
				<label>Nivel:</label>
				<div class="form-check">
					 <input class="form-check-input av" type="radio" name="Level" id="avan" value="option1">
					 <label class="form-check-label av" for="avan">
					   Avanzado
					 </label>
				</div>
				<div class="form-check">
					 <input class="form-check-input in" type="radio" name="Level" id="int" value="option1">
					 <label class="form-check-label in" for="int">
					   Intermedio
					 </label>
				</div>
				<div class="form-check">
					 <input class="form-check-input pr" type="radio" name="Level" id="prin" value="option1" checked>
					 <label class="form-check-label pr" for="prin">
					   Principiante
					 </label>
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="exampleFormControlTextarea1">Descripcion del curso</label>
    			<textarea class="form-control" id="exampleFormControlTextarea1" name="dc" rows="6" required></textarea>
    			<input type="submit" value="Crear curso" class="px-5 py-2 my-2 btn btn-primary">
                        <input type="hidden" name="id_user" value='<%=session.getAttribute("id")%>'>
                        <input type="hidden" name="rduracion" id="request_duration" value="15-30 min">
                        <input type="hidden" name="rnivel" id="request_nivel" value="principiante">
                        <input type="hidden" name="instruccion" value="NewCourse">
			</div>
		</div>
	</form>

	<script type="text/javascript">
		ScrollReveal().reveal('#formula', { delay: 500 , origin:'bottom', distance: '500px'});

		$(document).ready(function(){
			//esto es para saber que radioButton presiona
			$('.q-t').click(function(){
				document.getElementById('request_duration').value="15-30 min";
			});
			$('.t-s').click(function(){
				document.getElementById('request_duration').value="30-60 min";
			});
			$('.u-d').click(function(){
				document.getElementById('request_duration').value="1-2 hrs";
			});
			$('.d-c').click(function(){
				document.getElementById('request_duration').value="2-4 hrs";
			});
			$('.c-n').click(function(){
				document.getElementById('request_duration').value="4-9 hrs";
			});
			$('.n-t').click(function(){
				document.getElementById('request_duration').value="9-13 hrs";
			});
			$('.t-v').click(function(){
				document.getElementById('request_duration').value="13-20 hrs";
			});
			$('.mv').click(function(){
				document.getElementById('request_duration').value="mas de 20 hrs";
			});
			//esto es para saber que nivel eligio
			$('.av').click(function(){
				document.getElementById('request_nivel').value="avanzado";
			});
			$('.in').click(function(){
				document.getElementById('request_nivel').value="intermedio";
			});
			$('.pr').click(function(){
				document.getElementById('request_nivel').value="principiante";
			});
		});
	</script>

</body>
<!--Estos js son de bootsrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>