function disp(){
  var res;
  res = "";
  for (var i = 1; i <= 10; i++) {
      res = res + i + " ";
  }
  document.getElementById("liczby").innerHTML = res;
}
