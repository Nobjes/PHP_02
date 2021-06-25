<?php
//1. POSTデータ取得

//まず前のphpからデーターを受け取る（この受け取ったデータをもとにbindValueと結びつけるため）
$name = $_POST["name"];
$first = $_POST["first"];
$first_place = $_POST["first_place"];
$second = $_POST["second"];
$second_place = $_POST["second_place"];
$third = $_POST["third"];
$third_place = $_POST["third_place"];
$fourth = $_POST["fourth"];
$fourth_place = $_POST["fourth_place"];
$fifth = $_POST["fifth"];
$fifth_place = $_POST["fifth_place"];

//2. DB接続します xxxにDB名を入力する
//ここから作成したDBに接続をしてデータを登録します xxxxに作成したデータベース名を書きます
// mamppの方は
// $pdo = new PDO('mysql:dbname=xxx;charset=utf8;host=localhost', 'root', 'root');

try {
    $pdo = new PDO('mysql:dbname=ranking_db;charset=utf8;host=localhost', 'root', 'root');
} catch (PDOException $e) {
    exit('DbConnectError:'.$e->getMessage());
}


//３．データ登録SQL作成 //ここにカラム名を入力する
//xxx_table(テーブル名)はテーブル名を入力します
$stmt = $pdo->prepare("INSERT INTO ranking_table(id, name, first, first_place, second, second_place, third, third_place, fourth, fourth_place, fifth, fifth_place)
VALUES(NULL, :name, :first, :first_place, :second, :second_place, :third, :third_place, :fourth, :fourth_place, :fifth, :fifth_place)");
$stmt->bindValue(':name', $name, PDO::PARAM_STR);  
$stmt->bindValue(':first', $first, PDO::PARAM_STR);  
$stmt->bindValue(':first_place', $first_place, PDO::PARAM_STR);  
$stmt->bindValue(':second', $second, PDO::PARAM_STR);  
$stmt->bindValue(':second_place', $second_place, PDO::PARAM_STR);  
$stmt->bindValue(':third', $third, PDO::PARAM_STR);  
$stmt->bindValue(':third_place', $third_place, PDO::PARAM_STR);  
$stmt->bindValue(':fourth', $fourth, PDO::PARAM_STR);  
$stmt->bindValue(':fourth_place', $fourth_place, PDO::PARAM_STR);  
$stmt->bindValue(':fifth', $fifth, PDO::PARAM_STR);  
$stmt->bindValue(':fifth_place', $fifth_place, PDO::PARAM_STR);  
$status = $stmt->execute();

//４．データ登録処理後
if ($status==false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit("QueryError:".$error[2]);
} else {
    //５．index.phpへリダイレクト 書くときにLocation: in この:　のあとは半角スペースがいるので注意！！
    header("Location: select.php");
    exit;
}
