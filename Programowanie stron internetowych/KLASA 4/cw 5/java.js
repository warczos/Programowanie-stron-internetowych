function disp(){
  var i, res;
  i = 0;
  res = "";

  while (i <= 100) {
    if (i % 5 == 0) {
      res += i + " ";
      console.log(i);
    }
    i++;
  }
  document.getElementById("liczby").innerHTML = res;
}
