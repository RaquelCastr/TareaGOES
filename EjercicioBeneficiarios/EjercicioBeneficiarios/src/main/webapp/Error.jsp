<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
<div class="bg-secondary">
		<center>
			<img class="bg-secondary" src="img/Logo_GOES2.png" alt="">
		</center>
	</div>
	<div class="container animate_animated animate_backInDown">
		<div class="row justify-content-center align-items-center vh-100">
			<div class="offset col-md-7 bg-light border border-success rounded">
				<div class="contendor m-5">
					<center>
						<h1 class="fa fa-info-circle"></h1>
					</center>
					<h5 align="center">
						Este Dui no se encuentra en nuestros registros.
					</h5>
					<br>
					<h5 align="center">Intenta ingresando el Dui de otra persona de tu vivienda</h5>
					<form action="ControllerAcceso" method="post">
					<center>
						<button class="btn btn-success" type="submit" name="btncerrar">Regresar</button>
						</center>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>