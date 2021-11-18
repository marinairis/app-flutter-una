function somarValores(){
  var n1 = document.getElementById("txt1").value;
  var n2 = document.getElementById("txt2").value;
  var soma = parseInt(n1) + parseInt(n2);
  document.getElementById("result").innerHTML = soma;
  }
