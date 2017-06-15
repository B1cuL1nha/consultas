<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="controller" class="edu.fatec.controller.MedicoController" />
<c:import url="/jsp/header.jsp" />

<h1 class="text-center col-sm-12">Lista de Medicos</h1>


<div id="alert-sucess"
	class="alert alert-success alert-dismissable fade in col-sm-12 text-center hidden-success">
	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	<h3>
		<strong>Success!</strong> ${mensagemSucesso}
	</h3>
</div>

<div id="alert-error"
	class="alert alert-danger alert-dismissable fade in col-sm-12 text-center hidden-error">
	<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
	<h3>
		<strong>Error!</strong> ${mensagemErro}
	</h3>
</div>

<c:choose>
	<c:when test="${condicao}">
		<script type="text/javascript">
			document.getElementById("alert-error").classList
					.remove("hidden-error");
			document.getElementById("alert-sucess").classList
					.remove("hidden-success");
			document.getElementById("alert-error").classList
					.add("hidden-error");
		</script>
	</c:when>
	<c:otherwise>
	<c:if test="${condicao2}">
		<script type="text/javascript">
			document.getElementById("alert-error").classList
					.remove("hidden-error");
			document.getElementById("alert-sucess").classList
					.remove("hidden-success");
			document.getElementById("alert-sucess").classList
					.add("hidden-success");
		</script>
		</c:if>
	</c:otherwise>
</c:choose>

<form class="form-group" action="${pageContext.request.contextPath}/MedicoController" method="post">
	<div class="w3-responsive container">
		<table class="table">
			<thead>
				<tr>
					<th>CRM</th>
					<th>Nome</th>
					<th>Especialidade</th>
					<th>Telefone</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="m" items="${controller.lista}">
					<tr>
						<td>${m.id}</td>
						<td>${m.nome}</td>
						<td>${m.especialidade}</td>
						<td>${m.telefone}</td>
						<td><button class="btn btn-primary yellow" type="submit" name="cmd"
								value="AlterarX${m.id}">
								<i class="glyphicon glyphicon-pencil"></i>
							</button>
						</td>
						<td><button class="btn btn-primary red" type="submit" name="cmd"
								value="RemoverX${m.id}">
								<i class="glyphicon glyphicon-trash"></i>
							</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</form>
<c:import url="/jsp/footer.jsp" />