<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<jsp:useBean id="controller"
	class="edu.fatec.controller.MedicoController" />
<jsp:useBean id="controller2"
	class="edu.fatec.controller.PacienteController" />
<c:import url="/jsp/header.jsp" />

<h1 class="text-center col-sm-12">Marcar Consulta</h1>

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

<input type="hidden" class="form-control" id="sucesso" name="sucesso"
	value="${sucesso}">
<input type="hidden" class="form-control" id="erro" name="erro"
	value="${erro}">

<form name="formConsulta" class="form-group" onsubmit="return validateFormConsulta()"
	action="${pageContext.request.contextPath}/ConsultaController"
	method="post">

	<div class="container">
		<div class="form-group">
			<div class="col-sm-12">
				<input type="hidden" class="form-control" id="form-id" name="id"
					placeholder="Ex: 123" value="${id}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Data e Hora: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-data-hora"
					name="dataHora" placeholder="Ex: 12/03/2017 20:30"
					value="${dataHora}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Medico: *</label>
			<div class="col-sm-10">
				<select class="form-control" id="form-convenio" name="medico">
					<c:forEach var="m" items="${controller.lista}">
						<option ${"medico"=="${m.nome}"?"selected":""}>${m.nome}</option>
					</c:forEach>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Paciente: *</label>
			<div class="col-sm-10">
				<select class="form-control" id="form-convenio" name="paciente">
					<c:forEach var="p" items="${controller2.lista}">
						<option ${"paciente"=="${p.nome}"?"selected":""}>${p.nome}</option>
					</c:forEach>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Atendido: *</label>
			<div class="col-sm-10">
				<select class="form-control" ids="form-convenio" name="atendido">
					<option ${"atendido"=="False"?"selected":""}>False</option>
					<option ${"atendido"=="True"?"selected":""}>True</option>
				</select>
			</div>
		</div>


		<div class="form-group">
			<input class="col-sm-2 col-lg-offset-5 button" type="submit"
				name="cmd" value="Salvar" id="form-salvar" />
		</div>
	</div>
</form>

<c:import url="/jsp/footer.jsp" />