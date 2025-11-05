<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<link rel="stylesheet" href="CSS/style.css">

<main>
  <h1>入居者情報入力画面</h1>

  <form id="residentForm">

    <!-- コース選択 -->
    <div class="row">
      <label>コースを選んでください</label>
      <div class="radio-group column">
        <div class="radio-item">
          <input id="radio-a" type="radio" name="course" value="ziritu" checked>
          <label for="radio-a">自立コース</label>
        </div>
        <div class="radio-item">
          <input id="radio-b" type="radio" name="course" value="youkaigo">
          <label for="radio-b">要介護コース</label>
        </div>
      </div>
    </div>

    <!-- 名前 -->
    <label for="name">お名前</label>
    <input type="text" id="name" name="name" required>

    <!-- フリガナ -->
    <label for="kana">お名前(フリガナ)</label>
    <input type="text" id="kana" name="kana" pattern="[\u30A0-\u30FF]+" title="カタカナのみ入力してください" required>

    <!-- 性別 -->
    <div class="row">
      <label>性別</label>
      <div class="radio-group column">
        <div class="radio-item">
          <input id="radio-c" type="radio" name="gender" value="男" checked>
          <label for="radio-c">男</label>
        </div>
        <div class="radio-item">
          <input id="radio-d" type="radio" name="gender" value="女">
          <label for="radio-d">女</label>
        </div>
        <div class="radio-item">
          <input id="radio-e" type="radio" name="gender" value="回答しない">
          <label for="radio-e">回答しない</label>
        </div>
      </div>
    </div>

    <!-- ログインID -->
    <label for="login-id">ログインID</label>
    <input type="text" id="login-id" name="login-id" pattern="^[0-9]+$" required>
    <div id="id-error" class="error-message"></div>

    <!-- パスワード -->
    <label for="password">パスワード</label>
    <input type="password" id="password" name="password" pattern="^[0-9]+$" required>

    <!-- パスワード確認 -->
    <label for="passwordconfirm">パスワード(確認用)</label>
    <input type="password" id="passwordconfirm" name="passwordconfirm" pattern="^[0-9]+$" required>
    <div id="password-error" class="error-message"></div>

    <div id="form-message" class="success-message"></div>

    <button class="btn2" type="submit">送信</button>
  </form>
</main>

<script>
  document.getElementById('residentForm').addEventListener('submit', async function (event) {
    event.preventDefault();

    document.getElementById('password-error').textContent = "";
    document.getElementById('id-error').textContent = "";
    document.getElementById('form-message').textContent = "";

    const pw = document.getElementById('password').value;
    const pwConfirm = document.getElementById('passwordconfirm').value;
    const loginId = document.getElementById('login-id').value;

    let hasError = false;

    if (pw !== pwConfirm) {
      document.getElementById('password-error').textContent = "パスワードが一致しません";
      return false;
    }

    try {
      const res = await fetch("get_registered_ids.php");
      const registeredIds = await res.json();

      if (registeredIds.includes(loginId)) {
        document.getElementById('id-error').textContent = "このログインIDはすでに使われています";
        hasError = true;
      }
    } catch (error) {
      document.getElementById('form-message').textContent = "サーバーに接続できませんでした。";
      hasError = true;
    }
  });
</script>