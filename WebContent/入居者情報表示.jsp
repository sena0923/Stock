<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./Hamburger.css">
  <title>ストックわかる君</title>
</head>

<body>

  <!-- ヘッダー -->
  <header>
    <h1>ストックわかる君</h1>
    <div class="hamburger" id="hamburger">
      <span></span>
      <span></span>
      <span></span>
    </div>
    <nav id="nav">
      <a href="#">備品管理</a>
      <a href="#">購入</a>
      <a href="#">連絡帳</a>
      <a href="#">終活のすゝめ</a>
      <a href="#">アルバム</a>
      <a href="#">プロフィール</a>
      <a href="#">ユーザー情報表示</a>
      <a href="#">ログアウト</a>
    </nav>
  </header>

  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const hamburger = document.getElementById('hamburger');
      const nav = document.getElementById('nav');

      hamburger.addEventListener('click', () => {
        nav.classList.toggle('active');
        hamburger.classList.toggle('open');
      });
    });
  </script>

  <h2 style="font-size: 50px;">ユーザー情報</h2>

  <p style="font-size: 40px;">名前 | <%= request.getAttribute("userName") != null ? request.getAttribute("userName") : "未設定" %></p>
  <p style="font-size: 30px;">パスワード | ＊＊＊＊＊＊</p>
  <p style="font-size: 25px;">ログインID | <%= request.getAttribute("loginId") != null ? request.getAttribute("loginId") : "未設定" %></p>

  <div class="button-container">
    <button onclick="location.href='./入居者ホーム.jsp'">戻る</button>
    <button onclick="location.href='./入居者情報変更.jsp'">変更する</button>
  </div>

  <style>
    h2 {
      margin: 0;
      height: 15vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    p {
      margin: 0;
      height: 10vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-weight: bold;
      color: #333;
    }

    .button-container {
      display: flex;
      gap: 15px;
      justify-content: center;
    }

    button {
      padding: 10px 20px;
      font-size: 16px;
      font-weight: bold;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      color: #fff;
      background-color: #4CAF50;
      transition: background-color 0.3s;
    }

    button:hover {
      background-color: #45a049;
    }
  </style>

</body>
</html>