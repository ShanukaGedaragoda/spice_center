<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
</head>
<body>
    <h2>Register</h2>
    <form method="post" action="register_process.php">
        <label for="name">Name:</label>
        <input type="text" name="name" required><br><br>

        <label for="email">Email:</label>
        <input type="email" name="email" required><br><br>

        <label for="phone">Phone:</label>
        <input type="text" name="phone" required><br><br>

        <label for="password">Password:</label>
        <input type="password" name="password" required><br><br>

        <label for="repeat_password">Repeat Password:</label>
        <input type="password" name="repeat_password" required><br><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>

