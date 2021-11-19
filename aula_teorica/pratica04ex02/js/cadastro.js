function mascData(objeto, evento) {
    //6 braces 46 delete
    if (evento.keyCode == 8 || evento.keyCode == 46) {
        return true;
    }

    //48 e 47: 0,1,2,3,4,5,6,7,8 e 9
    if (evento.keyCode < 48 || evento.keyCode > 57) {
        alert("Somente números");
        return false;
    }

    if (objeto.value.length == 10) {
        return false;
    }

    if ((objeto.value.length == 2) || (objeto.value.length == 5)) {
        objeto.value = objeto.value + '/';
    }

    return true;
}

var form = document.getElementById("form")

form.addEventListener('submit', function (event) {
    event.preventDefault();
    console.log(event);
});

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
    var opcoesSexo = document.getElementsByName("sexo");
    for (var i = 0; i < opcoesSexo.length; i++) {
        if (opcoesSexo[i].checked) {
            sexoPreenchido = true;
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
