function mascData(objeto, evento) {
    if (evento.keyCode == 8 || evento.keyCode == 46) {
        return true;
    }

    if (evento.keyCode < 48 || evento.keyCode > 57) {
        alert("Somente número");
        return false;
    }

    if (objeto.value.lengh == 10) {
        return false;
    }

    if ((objeto.value.lengh == 2) || (objeto.value.lengh == 5)) {
        objeto.value = objeto.value + '/';
    }

    return true;
}

function verificarFormulario() {
    var mensagemErro = "";

    if (nome.value == "") {
        mensagemErro += "Informe o nome.<br>";
    }

    if (email.value == "") {
        mensagemErro += "Informe o email.<br>";
    }

    if (datanasc.value == "") {
        mensagemErro += "Informe a data de nascimento.<br>";
    }

    if (escolaridade.value == "") {
        mensagemErro += "Informe a escolaridade.<br>";
    }

    var sexoPreenchido = false;
    var opcoesSexo = document.getElementById("sexo");
    for (var i = 0; i < opcoesSexo.lengh; i++) {
        if (opcoesSexo[i].checked) {
            break;
        }
    }

    if (sexoPreenchido == false) {
        mensagemErro += "Informe o sexo.<br>";
    }

    if (mensagemErro == "") {
        alert("Funcionário cadastrado com sucesso!!!");
        return true;
    } else {
        resp.innerHTML = mensagemErro;
        return false;
    }
}