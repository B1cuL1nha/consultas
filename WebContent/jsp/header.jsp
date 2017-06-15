<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/jquery.maskedinput.js"></script>
<script src="${pageContext.request.contextPath}/js/mask.js"></script>
<script src="${pageContext.request.contextPath}/js/validation.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
<title>SGC - Sistema de Gerenciamento de Consultorios</title>
</head>
<body>
	<div>
		<ul class="nav nav-tabs nav-pills">
			<li class="active"><a href="/jsp/index.jsp">Home</a></li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown">Convenio <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="/jsp/Convenio/form.jsp">Gerenciar
							Convenios</a></li>
					<li><a href="/jsp/Convenio/list.jsp">Lista de
							Convenios</a></li>
				</ul>
			</li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown">Medico <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="/jsp/Medico/form.jsp">Gerenciar
							Medico</a></li>
					<li><a href="/jsp/Medico/list.jsp">Lista de
							Medicos</a></li>
				</ul>
			</li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown">Paciente <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="/jsp/Paciente/form.jsp">Gerenciar
							Paciente</a></li>
					<li><a href="/jsp/Paciente/list.jsp">Lista de 
							Pacientes</a></li>
				</ul>
			</li>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown">Consulta <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="/jsp/Consulta/form.jsp">Marcar
							Consulta</a></li>
					<li><a href="/jsp/Consulta/list.jsp">Lista de
							Consultas</a></li>
				</ul>
			</li>
		</ul>
	</div>