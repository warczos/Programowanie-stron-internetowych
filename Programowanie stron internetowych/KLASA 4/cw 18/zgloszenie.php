<?php
$a=$_POST['lowisko'];
$b=$_POST['data'];
$c=$_POST['sedzia'];

$polaczenie=mysqli_connect("localhost", "root", "", "wedkarstwo");
//or die("Nie można połączyć");

$zapytanie = "insert into zawody_wedkarskie values (null, 0, {$a}, '{$b}', '{$c}')";

$wynik=mysqli_query($polaczenie, $zapytanie);
echo" Dane {$a} {$b} {$c} zostały dodane do bazy";

mysqli_close($polaczenie);
?>