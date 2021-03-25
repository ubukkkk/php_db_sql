<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>デート記録</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body><br>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">デート記録</a></div>
    </div>
  </nav>
</header><br>
<!-- Head[End] -->

<!-- 最初の画像 -->
<br>
    <!-- Main[Start] -->
    <form method="post" action="insert.php">
    <div class="jumbotron">
        <fieldset>      
        <legend id="leg">デート相手の男</legend><br>
        <div id="item">
        <label>いつデートした？<input type="text" name="day" value="<?=$row["day"]?>"></label><br>
        <label>名前：<input type="text" name="name" value="<?=$row["name"]?>"></label><br>
        <label>年収:<input type="text" name="income" value="<?=$row["income"]?>"></label><br>
        <label>歳:<input type="text" name="age" value="<?=$row["age"]?>"></label><br>
        <label>身長:<input type="text" name="tall" value="<?=$row["tall"]?>"></label><br>
        <label>出身地:<input type="text" name="address" value="<?=$row["address"]?>"></label><br>
        <label>職種:<input type="text" name="job" value="<?=$row["job"]?>"></label><br>
        <label>学歴:<input type="text" name="eb" value="<?=$row["eb"]?>"></label><br>
        <label>格付け<input type="text" name="rank" value="<?=$row["rank"]?>"></label><br>
        <label>その他 特筆事項:<textarea name="comment" cols="40" rows="2"></textarea></label>
        <input type="submit" value="送信">
        </fieldset></div>
    </div>
    </form>
    <!-- Main[End] -->

</body>
</html>