function dispPrice(){
    var cena = 0;
if(document.getElementById('short').checked) {
cena = 25;
}
if(document.getElementById('average').checked) {
cena = 30;
}
if(document.getElementById('shortlong').checked) {
cena = 40;
}
if(document.getElementById('long').checked) {
cena = 50;
}
document.getElementById('wynik').innerHTML = "Cena strzyżenia: " + cena + "zł";

}
