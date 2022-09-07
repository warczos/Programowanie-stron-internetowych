function disp(){
  var kolor
  kolor = document.getElementById("numid").value;
  document.getElementById("liczbadips").innerHTML= "Tekst:" + kolor;

  switch (kolor) {
    case "Zielony": document.getElementById("cytat").innerHTML= "Wybrano kolor zielony";
      break;
    case "Biały": document.getElementById("cytat").innerHTML= "Wybrano kolor biały";
      break;

    default:

  }
}
