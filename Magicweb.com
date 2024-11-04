<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exclusive Magic Content</title>
    <style>
        body { font-family: Arial, sans-serif; }
        .container { width: 300px; margin: 0 auto; padding-top: 50px; }
        input { display: block; width: 100%; margin: 10px 0; padding: 10px; }
        .login-btn, .buy-btn { padding: 10px; background-color: #28a745; color: #fff; border: none; cursor: pointer; }
        .exclusive-content { display: none; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Login to Access Magic Content</h2>
        <input type="text" id="username" placeholder="Username">
        <input type="password" id="password" placeholder="Password">
        <button class="login-btn" onclick="login()">Login</button>
        <div class="exclusive-content" id="exclusive-content">
            <h3>Welcome to the Magic Zone!</h3>
            <p>Here is your exclusive content.</p>
        </div>
    </div>
</body>
<script>
    function login() {
        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;

        if (username === "user" && password === "password") { // Simple login validation
            document.getElementById("exclusive-content").style.display = "block";
        } else {
            alert("Invalid login credentials!");
        }
    }
</script>
</html>
