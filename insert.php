<?php

    // 入力チェック(受信確認処理追加)
    if(
        !isset($_POST["day"]) || $_POST["day"]==""||
        !isset($_POST["name"]) || $_POST["name"]=="" ||
        !isset($_POST["income"]) || $_POST["income"]==""||
        !isset($_POST["age"]) || $_POST["age"]==""||
        !isset($_POST["tall"]) || $_POST["tall"]==""||
        !isset($_POST["address"]) || $_POST["address"]==""||
        !isset($_POST["job"]) || $_POST["job"]==""||
        !isset($_POST["eb"]) || $_POST["eb"]==""||
        !isset($_POST["rank"]) || $_POST["rank"]==""||
        !isset($_POST["comment"]) || $_POST["comment"]==""
    ){
        exit('ParamError');
    }

    // 1. POSTデータ取得
    $day = $_POST["day"];
    $name = $_POST["name"];
    $income = $_POST["income"];
    $age = $_POST["age"];
    $tall = $_POST["tall"];
    $address = $_POST["address"];
    $job = $_POST["job"];
    $eb = $_POST["eb"];
    $rank = $_POST["rank"];
    $comment = $_POST["comment"];

    // 2. DB接続します(エラー処理追加) rootの次はパスワード
    try{
        $pdo = new PDO('mysql:dbname=kad_db;charaset=urf8;host=localhost','root','root');
    } catch(PDOException $e) {
        exit('DbConnectError:'.$e->getMessage());
    }

    // 3. データ登録SQL作成
    $sql = "INSERT INTO k_table(id, day, name, income, age, tall, address, job, eb, rank, comment, 
    indate )VALUES(NULL, :a1, :a2, :a3, :a4, :a5, :a6, :a7, :a8, :a9, :a10, sysdate())";
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':a1', $day, PDO::PARAM_STR);
    $stmt->bindValue(':a2', $name, PDO::PARAM_STR);
    $stmt->bindValue(':a3', $income, PDO::PARAM_STR);
    $stmt->bindValue(':a4', $age, PDO::PARAM_STR);
    $stmt->bindValue(':a5', $tall, PDO::PARAM_STR);
    $stmt->bindValue(':a6', $address, PDO::PARAM_STR);
    $stmt->bindValue(':a7', $job, PDO::PARAM_STR);
    $stmt->bindValue(':a8', $eb, PDO::PARAM_STR);
    $stmt->bindValue(':a9', $rank, PDO::PARAM_STR);
    $stmt->bindValue(':a10', $comment, PDO::PARAM_STR);
    $status = $stmt->execute();

    // 4. データ登録処理後
    if($status==false){
        // SQL実行時にエラーがある場合(エラーオブジェクト取得)
        $error = $stmt->errorInfo();
        exit("QueryError:".$error[2]);
    } else{
        // 5. index.phpへリダイレクト
        header("Location: index.php");
        exit;
    }

?>