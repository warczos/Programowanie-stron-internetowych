function disp(){
  var res, x, y;
  res = 0;
  x = parseInt(document.getElementById("IdLiczbaX").value);
  y = parseInt(document.getElementById("IdLiczbaY").value);

  if (x < y) {
    for (var i = x + 1; i < y; i++) {
      res = res + i;
    }
  } else {
    document.getElementById("suma").innerHTML = "Liczba X większa od Y";
  }
  document.getElementById("suma").innerHTML = "Suma przedziału: " + res;
}
