<?php
    include "header.php";
    session_start();
?>

<body>
    <section class="login-container">
        <div class="btn-login">
            <button type="button" id="adminBtn">Admin</button>
        </div>
        <div class="admion-box" id="adminBox">
            <form method="post" action="verify.php" class="login-form">
                <div>
                    <label for="username">ID</label><br>
                    <input type="text" name="adminId" id="username">
                </div>
                <div>
                    <label for="password">MDP</label><br>
                    <input type="password" name="adminPass" id="password">
                </div>
                <input type="submit" value="Se Connecter" class="sent" name="admin">
            </form>
        </div>
    </section>
</body>
</html>