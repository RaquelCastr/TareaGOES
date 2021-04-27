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

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js&quot; integrity="
	sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</head>
<body>
<%
	HttpSession sesion = (HttpSession) request.getSession();
	String usuSession = String.valueOf(sesion.getAttribute("Nombre"));
	System.out.print("Nombre usuario: " + usuSession);

	if (usuSession.equals(null) || usuSession.equals("null")) {

		response.sendRedirect("index.jsp");
	}
	%>
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
						<h1 class="far fa-smile"></h1>
					</center>
					<h5 align="center">
						<%
						out.print(sesion.getAttribute("Nombre"));
						%>
						, si eres beneficiario del apoyo del apoyo economico de $300 para
						la alimentacion de tu hogar
					</h5>
					<form action="ControllerAcceso" method="post">
					<center>
						<button class="btn btn-success" type="submit" name="btncerrar">Consultar</button>
						</center>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>