function disp(){
  var a, b, c, delta, deltasqrt, res1, res2
  a = parseFloat(document.getElementById("numA").value);
  b = parseFloat(document.getElementById("numB").value);
  c = parseFloat(document.getElementById("numC").value);

  delta = Math.pow(b, 2) - (4*a*c)
  deltasqrt = Math.sqrt(delta)
  res1 = (-b+deltasqrt)/(2*a)
  res2 = (-b-deltasqrt)/(2*a)
  document.getElementById("wynik1").innerHTML= "Delta: " + delta;
  document.getElementById("wynik2").innerHTML= "Pierwiastek z delty: " + deltasqrt;
  document.getElementById("wynik3").innerHTML= "Wynik 1: " + res1;
  document.getElementById("wynik4").innerHTML= "Wynik 2: " + res2;
}
