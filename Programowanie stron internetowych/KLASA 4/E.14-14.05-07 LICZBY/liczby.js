function zakres() {
    var x = parseInt(document.getElementById("start").value);
    var y = parseInt(document.getElementById("koniec").value);
    var z = " "
    for (i = x; i <= y; i++) {
        z += i + ", "
    }
    for (i = x; i >= y; i--) {
        z += i + ", "
    }
    document.getElementById("wynik").innerHTML = z;}

function haslochck() {
		var haslo = document.getElementById("haslo").value;
		if (haslo === "liczba") {
			window.location.href = "liczba.html";
		} else {
			alert("Nieprawidłowe hasło");
		}
	}