<?php
$pdo = new PDO("mysql:host=localhost;dbname=burgers;charset=utf8", 'root', '');
$sql = "SELECT * FROM `users`";
$sth = $pdo->prepare($sql); // подготавливает
$sth->execute(); //результирующий набор, указатель на результат
$users = $sth->fetchALL(PDO::FETCH_ASSOC); //извлекает. фетч - одномерный массив, одну строку фетч алл - все
echo "<pre>";
echo "<h2>База пользователей</h2>";
foreach ($users as $key => $value) {
        echo '<br>';
    foreach ($value as $k => $v) {
        echo $k . ' : '  .$v . '<br>';
    }
}

$sql = "SELECT * FROM `users`";
$sth = $pdo->prepare($sql); // подготавливает
$sth->execute(); //результирующий набор, указатель на результат
$orders = $sth->fetchALL(PDO::FETCH_ASSOC); //извлекает. фетч - одномерный массив, одну строку фетч алл - все

echo "<h2>База заказов</h2>";

foreach ($orders as $key => $value) {
    echo '<br>';
    foreach ($value as $k => $v) {
        echo $k . ' : '  .$v . '<br>';
    }
}
