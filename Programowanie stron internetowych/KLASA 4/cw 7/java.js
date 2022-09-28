function disp(){
  var res, x;
  res = 0;
  x = parseInt(document.getElementById("IdLiczbaX").value);

  res = Math.pow(x, 2);
  document.getElementById("suma").innerHTML = "Wynik potęgowania: " + res;
}
