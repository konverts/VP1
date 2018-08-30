<?php
$pdo = new PDO("mysql:host=localhost;dbname=burgers;charset=utf8", 'root', '');
if (!empty($_POST['name']) and !empty($_POST['email']) and !empty($_POST['phone'])){
$name .= $_POST['name'];
$email .= $_POST['email'];
$tel .= $_POST['phone'];
$street .= $_POST['street'];
$home .= $_POST['home'];
$part .= $_POST['part'];
$appt .= $_POST['appt'];
$floor .= $_POST['floor'];
$comment .= $_POST['comment'];
$payment .= $_POST['payment'];
echo "<h1 align='center'>Кухня приняла Ваш заказ</h1> <br> <h2 align='center'>Ваш сочный бургер уже готовит наш лучший повар.</h2>";
}else {
    echo "Ошибка: Заполните имя, email и телефон!";
}
str_replace(' ','',$email);// удаляем пробелы
$email = mb_strtolower($email); // нижний регистр
// получение id пользователя
$sql = "SELECT `id` FROM users WHERE `mail` = '$email'";
$sth = $pdo->prepare($sql); // подготавливает
$sth->execute();
$result = $sth->fetch(PDO::FETCH_ASSOC); //извлекает. фетч - одномерный массив
//var_dump($result);
//var_dump(1);
// проверяем, существует ли пользователь
if ($result === false) {
    $sql = "INSERT INTO `users`(`name`, `mail`, `tel`) VALUES ('$name' ,'$email','$tel');";
   // var_dump($sql);
    $sth = $pdo->prepare($sql);
    $sth->execute();
    //почему мы проверяем повторно id после того, как мы записали заказ и где мы добавляем нового пользователя, если он не существует
  //  var_dump(2);
    $sql = "SELECT `id` FROM users WHERE `mail` = '$email'";
    $sth = $pdo->prepare($sql); // подготавливает
    $sth->execute(); //результирующий набор, указатель на результат
    $result = $sth->fetch(PDO::FETCH_ASSOC); //извлекает. фетч - одномерный массив, одну строку фетч алл - все
  //  var_dump($result);
}
$sql = "INSERT INTO `orders` (`user_id`, `name`, `street`, `house`, `korp`, `kvart`, `etaj`, `komment`, `oplata`) VALUES ('$result[id]', '$name', '$street', '$home', '$part', '$appt', '$floor', '$comment', '$payment');";
var_dump($sql);
$sth = $pdo->prepare($sql);
$sth->execute();

////Номер заказа
$sql = "SELECT MAX(`id`) as maxId FROM `orders` WHERE `user_id` = '$result[id]'";
$getId = $pdo->prepare($sql);
$getId->execute();
$id = $getId->fetch(PDO::FETCH_ASSOC);
//var_dump($id);

////количество заказов
$sql = "SELECT COUNT(*) as number_orders FROM `orders` WHERE `user_id` = '$result[id]'";
$countId = $pdo->prepare($sql);
$countId->execute();
$count = $countId->fetch(PDO::FETCH_ASSOC);
//var_dump($count);

if ($count[number_orders] == 1) {
    $fanks = "Спасибо, это ваш первый заказ " . $count[number_orders];
} else {
    $fanks = 'Спасибо, это уже ' . $count[number_orders] . ' Ваш заказ';
}

//сохраняем данные в файл
$file = 'orders.txt';

$current = "\n-----------\n" . "Заказ " . $id[maxId] . "\n" . $name . ", Ваш заказ будет доставлен по адресу\n" . "Ул " . $street . ", дом: " . $home . ", корпус: " . $part . ", квартира " . $appt . " этаж: " . $floor . "\nВаш заказ: DarkBeefBurger за 500 рублей, 1 ш\n" . $fanks . "\n-----------\n";
//print_r ($current);
// Пишем содержимое обратно в файл
file_put_contents($file, $current, FILE_APPEND | LOCK_EX);

