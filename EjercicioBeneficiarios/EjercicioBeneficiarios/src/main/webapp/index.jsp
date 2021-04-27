<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
<link rel="stylesheet" href="CSS/Estiloo.css">
<body>
<div class="bg-secondary">
        <center>
            <img class="bg-secondary" src="img/Logo_GOES2.png" alt="">
        </center>
    </div>
<div class="container animate__animated animate__backInDown">
        <div class="row justify-content-center align-items-center vh-100">
            <div class="offset col-md-5 bg-light border border-success rounded">
                <form action="ControllerAcceso" method="post">
					<div class="contenedor">
						<h5 align="center">Consulta quien de tu familia es el
							beneficiario del apoyo economico para la alimentacion en la
							emergencia.</h5>
						<center>
							<label class="label">COVID-19</label>
						</center>
						<div class="input-group mt-5 mb-5">
							<span class="input-group-text fa fa-id-card"></span> <input
								class="form-control" type="number" name="DUI"
								placeholder="Ingrese su DUI" min="0" required>
							<button class="btn btn-info" type="submit">
								<i class="fa fa-location-arrow"></i>CONSULTAR
							</button>
            </div>
        </div>
    </div>
</body>
</html>
