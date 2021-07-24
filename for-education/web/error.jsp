<!DOCTYPE html>
<html>
<head>
	<!-- -->
	<meta name="viewport" content="width=device-width, user-scalable=no">
	<!-- Este es el link de bootstrap-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Error inesperado</title>
	<!-- Esto es para el scroll animated-->
	<script src="https://unpkg.com/scrollreveal"></script>

	<!-- Esto es de google fonts -->
	<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,300;0,400;1,200;1,300&display=swap" rel="stylesheet">

	<!-- Este es el kit de fontAwesome -->
	<script src="https://kit.fontawesome.com/f7f3b1c29f.js" crossorigin="anonymous"></script>

	<!--css personalizado
	<link rel="stylesheet" type="text/css" href="css/general.css">-->
</head>
<body>

	<!-- Este es el navBar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="#">JKM</a>
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


	<section class="container mt-5">
		<div class="jumbotron">
                    <p class="" style="font-size: 45px">ERROR</p>
		  <p class="lead"><%=request.getAttribute("simpleMessage")%></p>
		  <hr class="my-4">
		  <p><%=request.getAttribute("allMessage")%></p>
                  <a class="btn btn-primary btn-lg px-4" href="<%=request.getAttribute("redirect")%>" role="button">Regresar</a>
		</div>
	</section>
	

</body>
<!--Estos js son de bootsrap -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</html>