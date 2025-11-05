<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

  <h1>入居者ログイン画面</h1>

  <form id="loginForm" method="post" action="login.jsp">
    <h2>ログインID</h2>
    <input id="login-id" name="login-id" type="text" pattern="^[0-9]+$" required>

    <h2>パスワード</h2>
    <input id="password" name="password" type="password" pattern="^[0-9]+$" required>

    <div class="error-message">
      <%= request.getParameter("login-id") != null ? errorMessage : "" %>
    </div>

    <button class="btn2" type="submit">ログイン</button>
  </form>

  <br>
  <a href="./入居者新規登録.jsp">新規登録</a>

</body>
</html>