function logincheck() {
  var loginhard, haslohard, login, haslo;
  loginhard="test123";
  haslohard="tset321";

  login=document.getElementById("login").value;
  haslo=document.getElementById("haslo").value;

  if (login == loginhard || haslohard == haslo) {
    window.location.replace("https://twitter.com/");
  }
}
