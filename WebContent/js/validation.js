function validateFormConsulta() {
    var x = document.forms["formConsulta"]["dataHora"].value;
    if (x == "") {
        alert("Data e Hora da consulta devem ser preenchidos");
        return false;
    }
}

function validateFormConvenio() {
    var x = document.forms["formConvenio"]["nome"].value;
    if (x == "") {
        alert("O Nome deve ser preenchido");
        return false;
    }
    
    var y = document.forms["formConvenio"]["dataInicio"].value;
    if (y == "") {
        alert("A data de inicio do convenio deve ser preenchida");
        return false;
    }
}

function validateFormMedico() {
    var x = document.forms["formMedico"]["crm"].value;
    if (x == "") {
        alert("O CRM deve ser preechido");
        return false;
    }
    
    var y = document.forms["formMedico"]["nome"].value;
    if (y == "") {
        alert("O Nome deve ser preenchido");
        return false;
    }
    
    var y = document.forms["formMedico"]["telefone"].value;
    if (y == "") {
        alert("O Telefone deve ser preenchido");
        return false;
    }
}

function validateFormPaciente() {
    var x = document.forms["formPaciente"]["cpf"].value;
    if (x == "") {
        alert("O cpf deve ser preenchido");
        return false;
    }
    
    var y = document.forms["formPaciente"]["nome"].value;
    if (y == "") {
        alert("O Nome deve ser preenchido");
        return false;
    }
    
    var z = document.forms["formPaciente"]["endereco"].value;
    if (z == "") {
        alert("O Endereco deve ser preenchido");
        return false;
    }
    
    var a = document.forms["formPaciente"]["bairro"].value;
    if (a == "") {
        alert("O Bairro deve ser preenchido");
        return false;
    }
    
    var a = document.forms["formPaciente"]["telefone"].value;
    if (a == "") {
        alert("O Telefone deve ser preenchido");
        return false;
    }
    
}
