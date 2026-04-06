<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>RSA - Cifrado Asimétrico</title>
    </head>
    <body>
        <h1>Cifrado Asimétrico RSA 2048 bits</h1>
        <p>La llave pública cifra. La llave privada descifra.</p>

        <form action="EncryptServlet" method="post">
            <label>Mensaje:</label><br>
            <input type="text" name="mensaje" required><br><br>
            <button type="submit">Cifrar</button>
        </form>
    </body>
</html>