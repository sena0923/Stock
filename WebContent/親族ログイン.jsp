<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>親族ログイン画面</title>
  <link rel="stylesheet" href="CSS/login.css">
</head>

<body>

  <h1>親族ログイン画面</h1>

  <form id="loginForm" method="post" action="親族ログインチェック.jsp">
    <h2>ログインID</h2>
    <input id="login-id" name="login-id" type="text" pattern="^[0-9]+$" required>

    <h2>パスワード</h2>
    <input id="password" name="password" type="password" pattern="^[0-9]+$" required>

    <div id="error-message" class="error-message">
      <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
    </div>

    <button class="btn2" type="submit">ログイン</button>
  </form>

  <br>
  <a href="./親族情報入力画面.jsp">新規登録</a>

</body>
</html>