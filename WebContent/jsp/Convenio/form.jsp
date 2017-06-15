<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="/jsp/header.jsp" />

<div>
	<h1 class="text-center col-sm-12">Gerenciar Convenio</h1>
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
<form name="formConvenio"class="form-group" onsubmit="return validateFormConvenio()"
	action="${pageContext.request.contextPath}/ConvenioController"
	method="post">
	<div class="container">
		<div class="form-group">
			<div class="col-sm-12">
				<input type="hidden" class="form-control" id="form-codigo"
					name="codigo" placeholder="Ex: 123" value="${codigo}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Nome: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-nome" name="nome"
					placeholder="Ex: Amil Ouro" value="${nome}">
			</div>
		</div>

		<div class="form-group">
			<label class="control-label col-sm-2">Data de Inicio: *</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="form-data"
					name="dataInicio" placeholder="Ex: 11/11/2011"
					value="${dataInicio}">
			</div>
		</div>

		<div class="form-group">
			<input class="col-sm-2 col-lg-offset-5 button" type="submit" name="cmd" value="Salvar"
				id="form-salvar" />
		</div>
	</div>
</form>

<c:import url="/jsp/footer.jsp" />