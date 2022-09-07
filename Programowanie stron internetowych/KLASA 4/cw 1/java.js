function disp(){
  var num
  num = parseInt(document.getElementById("numid").value);
  document.getElementById("liczbadips").innerHTML= "Liczba:" + num;
  if (num % 2 != 0) {
    document.getElementById("cytat").innerHTML= "Liczba nieparzysta";
  }
  else {
    document.getElementById("cytat").innerHTML= "Liczba parzysta";
  }
}
