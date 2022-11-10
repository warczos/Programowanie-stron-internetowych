function count() {
  var a, b, obw, sqr
  a = parseFloat(document.getElementById("boka").value);
  b = parseFloat(document.getElementById("bokb").value);

  obw = (2*a)+(2*b);
  sqr = a*b;

  document.getElementById("pole").value = sqr;
  document.getElementById("obwod").value = obw;
}
