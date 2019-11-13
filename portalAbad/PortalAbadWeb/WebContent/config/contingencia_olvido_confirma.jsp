<%@ include file="includecbtf.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="estilos/estilosB.css" rel="stylesheet">
<link href="estilos/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/contingencia_registro_formulario.js"></script>
<title>Olvido de clave Canal de Contingencia - PIBEE</title>


</head>
<body>
	<%
		String codReferencia = (String) datos.get("codReferencia");
		String codUsuario = (String) datos.get("codUsuario");
	%>
	<div class="container">
		<div class="page-header">
		  	<img src="images/LogoBBVA.png">
		</div>
		<div class="col-md-2"></div>
		<div class="col-md-10">
			<h2>Olvido de clave</h2>
			
			<div class="panel panel-default"> 
				<div class="panel-heading">
					Firma: Resumen y Confirmaci�n de firma
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-10">Resumen de la confirmaci�n de la firma del cambio de clave de acceso</div>
						<div class="col-md-2">Paso 3 de 3</div>
					</div>
					<br>
					
					<%if(datos.get("Estado").equals("CanalNoContratado"))
					{ %>
					<div id="alerta" class="alert alert-danger alert-dismissible" role="alert">
						<div class="col-md-11"><img src="images/danger.png">&emsp;<span>Usted no tiene contratado el servicio de canal de contingencia</span></div>
						<div class="col-md-1" style="padding-top: 2px;"><a href="#" onclick="cerrarAlerta('#alerta')"><img src="images/cerrarAlerta.png"></a></div>
						<br>
					</div>	
					<%}
					else if(datos.get("Estado").equals("ServiciosNoValidos"))
					{%>
					<div id="alerta" class="alert alert-danger alert-dismissible" role="alert">
						<div class="col-md-11"><img src="images/danger.png">&emsp;<span id="alertaMsg">Usted no tiene contratado ninguno de los servicios del canal de contingencia</span></div>
						<div class="col-md-1" style="padding-top: 2px;"><a href="#" onclick="cerrarAlerta('#alerta')"><img src="images/cerrarAlerta.png"></a></div>
						<br>
					</div>
					<%}
					else if(datos.get("Estado").equals("ErrorToken"))
					{%>
					<div id="alerta" class="alert alert-danger alert-dismissible" role="alert">
						<div class="col-md-11"><img src="images/danger.png">&emsp;<span id="alertaMsg">Clave de token o clave de operaciones invalida</span></div>
						<div class="col-md-1" style="padding-top: 2px;"><a href="#" onclick="cerrarAlerta('#alerta')"><img src="images/cerrarAlerta.png"></a></div>
						<br>
					</div>
					<%}
					else if(datos.get("Estado").equals("UsuarioYaRegistrado"))
					{%>
					<div id="alerta" class="alert alert-danger alert-dismissible" role="alert">
						<div class="col-md-11"><img src="images/danger.png">&emsp;<span id="alertaMsg">El usuario solicitado no est� registrado en el canal de contingencia</span></div>
						<div class="col-md-1" style="padding-top: 2px;"><a href="#" onclick="cerrarAlerta('#alerta')"><img src="images/cerrarAlerta.png"></a></div>
						<br>
					</div>
					<%}
					else if(datos.get("Estado").equals("UsuarioRegistrado"))
					{%>
					<div id="alerta" class="alert alert-success alert-dismissible" role="alert">
						<p id="alertaMsg"> </p>
						<div class="col-md-11"><img src="images/danger.png">&emsp;<span id="alertaMsg">El cambio de contrase�a se ha realizado correctamente</span></div>
						<div class="col-md-1" style="padding-top: 2px;"><a href="#" onclick="cerrarAlerta('#alerta')"><img src="images/cerrarAlerta.png"></a></div>
						<br>
					</div>
					<%}
					else if(datos.get("Estado").equals("NoFirma"))
					{%>
					<div id="alerta" class="alert alert-danger alert-dismissible" role="alert">
						<div class="col-md-11"><img src="images/danger.png">&emsp;<span id="alertaMsg">El usuario solicitado no posee poder de firma</span></div>
						<div class="col-md-1" style="padding-top: 2px;"><a href="#" onclick="cerrarAlerta('#alerta')"><img src="images/cerrarAlerta.png"></a></div>
						<br>
					</div>
					<%}
					else if(datos.get("Estado").equals("ErrorLdap"))
					{%>
					<div id="alerta" class="alert alert-danger alert-dismissible" role="alert">
						<div class="col-md-11"><img src="images/danger.png">&emsp;<span id="alertaMsg">Error al modificar la clave de acceso, int�ntelo de nuevo</span></div>
						<div class="col-md-1" style="padding-top: 2px;"><a href="#" onclick="cerrarAlerta('#alerta')"><img src="images/cerrarAlerta.png"></a></div>
						<br>
					</div>
					<%}%>
					<div class="table-responsive">
						<table class="simple2" border="1">
							<tr class="active">
								<td>C�DIGO</td>
								<td>NOMBRE DEL USUARIO</td>
								<td>TIPO</td>
								<td>ESTADO</td>
								<td>CORREO</td>
								<td>OPERACI�N</td>			
							</tr>
							<tr>
								<td><%=(String)datos.get("codUsuario")%></td>
								<td><%=(String)datos.get("nombreUsuario") %></td>
								<td><%=(String)datos.get("tipoUsuario") %></td>
								<td><%=(String)datos.get("estadoUsuario") %></td>
								<td><%=(String)datos.get("emailUsuario")%></td>
								<td>Recuperar clave</td>
							</tr>
						</table>
					</div>				
					
					<br>					
					<div class="row">
						<div class="col-md-12">
							<input class="btn btn-primary pull-right" type="button" onclick="window.location='https://www.bbvanet.com.co/principal2.html'" value="Cerrar"></input>
						</div>
					</div>								
				</div>
			</div>			
		</div>
	</div>
</body>
</html>