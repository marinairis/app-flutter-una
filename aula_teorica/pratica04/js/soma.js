function somar(a, b) {
  var num_um = a;
  var num_dois = b;
  var total = num_um + num_dois;
  document.write("Valor total da soma: " + total);
}

function somarValores(){
  var s1 = document.getElementById("txt1").value;
  var s2 = document.getElementById("txt2").value;
  var s3 = s1 + s2;
  alert(s3);
  }
