<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="/jsp/header.jsp" />

<div>
	<h1 class="text-center col-sm-12">Gerenciar Medico</h1>
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

<form name="formMedico" class="form-group" onsubmit="return validateFormMedico()"
	action="${pageContext.request.contextPath}/MedicoController"
	method="post">
	<div class="container">
		<div class="form-group">
			<label class="control-label col-sm-2">CRM: *</label>
			<div class="col-sm-10">
				<input type="number" class="form-control" id="form-crm" name="crm"
					placeholder="Ex: 12345" value="${crm}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Nome: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-nome" name="nome"
					placeholder="Ex: Jose da Silva" value="${nome}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Especialidade: *</label>
			<div class="col-sm-10">
				<select class="form-control" id="form-especialidade"
					name="especialidade">
					<option ${especialidade=="Acupuntura"?"selected":""}>Acupuntura</option>
					<option ${especialidade=="Alergia e Imunologia"?"selected":""}>Alergia
						e Imunologia</option>
					<option ${especialidade=="Cardiologia"?"selected":""}>Cardiologia</option>
					<option ${especialidade=="Cadiovascular"?"selected":""}>Cadiovascular</option>
					<option ${especialidade=="Pediatria"?"selected":""}>Pediatria</option>
					<option ${especialidade=="Clinico Geral"?"selected":""}>ClinicoGeral</option>
					<option ${especialidade=="Dermatologia"?"selected":""}>Dermatologia</option>
					<option ${especialidade=="Endocrinologia"?"selected":""}>Endocrinologia</option>
					<option ${especialidade=="Proctologia"?"selected":""}>Proctologia</option>
					<option ${especialidade=="Gastroenterologia"?"selected":""}>Gastroenterologia</option>
				</select>
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
			<input class="col-sm-2 col-lg-offset-5 button" type="submit"
				name="cmd" value="Salvar" id="form-salvar" />
		</div>
	</div>
</form>

<c:import url="/jsp/footer.jsp" />