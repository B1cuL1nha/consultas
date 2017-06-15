<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="/jsp/header.jsp" />
<jsp:useBean id="controller"
	class="edu.fatec.controller.ConvenioController" />

<div>
	<h1 class="text-center col-sm-12">Gerenciar Paciente</h1>
</div>


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
<form name="formPaciente" class="form-group" onsubmit="return validateFormPaciente()"
	action="${pageContext.request.contextPath}/PacienteController"
	method="post">
	<div class="container">
		<div class="form-group">
			<div class="col-sm-12">
				<input type="hidden" class="form-control" id="form-id" name="id"
					placeholder="Ex: 123" value="${id}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">CPF: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-cpf" name="cpf"
					placeholder="Ex: 123.454.324-80" value="${cpf}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Nome: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-nome" name="nome"
					placeholder="Ex: Benson Ferreira" value="${nome}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Endereco: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-endereco"
					name="endereco" placeholder="Ex: Rua A, 3" value="${endereco}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Bairro: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-bairro"
					name="bairro" placeholder="Ex: Bairro B" value="${bairro}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Telefone: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-telefone"
					name="telefone" placeholder="Ex: (11) 2222-2222"
					value="${telefone}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Convenio: *</label>
			<div class="col-sm-10">
				<select class="form-control" id="form-convenio" name="convenio">
					<c:forEach var="c" items="${controller.lista}">
						<option ${convenio=="${c.nome}"?"selected":""}>${c.nome}</option>
					</c:forEach>
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