<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>入居者情報変更画面</title>
    <style>
        /* CSSは元のままでOK */
        /* ...省略（元のCSSをそのまま使用）... */
    </style>
</head>

<body>

    <h1>ユーザー情報変更画面</h1>

    <form method="post" action="入居者情報変更完了.jsp" onsubmit="return validateForm();">
        <h2>メールアドレス</h2>
        <input type="email" id="email" name="email" placeholder="example@example.com" required>

        <h2>パスワード</h2>
        <input type="password" id="password" name="password" pattern="^[0-9]+$" required>

        <h2>パスワード(確認用)</h2>
        <input type="password" id="passwordConfirm" name="passwordConfirm" pattern="^[0-9]+$" required placeholder="もう一度入力">

        <p id="passwordError" style="color: red; display: none;"></p>

        <button class="btn2" type="submit">完了</button>
    </form>

    <script>
    function validateForm() {
        const pw1 = document.getElementById('password').value;
        const pw2 = document.getElementById('passwordConfirm').value;
        const passwordError = document.getElementById('passwordError');

        if (pw1 === "" || pw2 === "") {
            passwordError.style.display = "block";
            passwordError.textContent = "両方の欄に入力してください。";
            return false;
        }

        if (pw1 !== pw2) {
            passwordError.style.display = "block";
            passwordError.textContent = "パスワードが一致しません。";
            return false;
        }

        passwordError.style.display = "none";
        return true;
    }
    </script>

</body>
</html>