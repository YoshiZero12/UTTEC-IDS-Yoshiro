<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Base64, java.security.PublicKey, java.security.PrivateKey"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Resultado RSA</title>
    </head>
    <body>

        <%
            PublicKey  pubKey  = (PublicKey)  session.getAttribute("publicKey");
            PrivateKey privKey = (PrivateKey) session.getAttribute("privateKey");
            String     modo    = (String)     request.getAttribute("modo");
            String     result  = (String)     request.getAttribute("resultado");
            boolean    cifrado = "Cifrado RSA".equals(modo);
        %>

        <h1><%= modo %></h1>

        <% if (cifrado) { %>

            <h3>Llave publica (cifra)</h3>
            <textarea rows="8" cols="70" readonly>-----BEGIN PUBLIC KEY-----
<%= Base64.getMimeEncoder(64, new byte[]{'\n'}).encodeToString(pubKey.getEncoded()) %>
-----END PUBLIC KEY-----</textarea>

            <h3>Llave privada (descifra)</h3>
            <textarea rows="8" cols="70" readonly>-----BEGIN PRIVATE KEY-----
<%= Base64.getMimeEncoder(64, new byte[]{'\n'}).encodeToString(privKey.getEncoded()) %>
-----END PRIVATE KEY-----</textarea>

            <h3>Mensaje cifrado</h3>
            <textarea rows="4" cols="70" readonly><%= result %></textarea>

            <br><br>
            <a href="DecryptServlet">Descifrar</a>
            &nbsp;
            <a href="index.jsp">Cifrar otro</a>

        <% } else { %>

            <h3>Mensaje descifrado</h3>
            <textarea rows="4" cols="70" readonly><%= result %></textarea>

            <br><br>
            <a href="index.jsp">Cifrar otro mensaje</a>

        <% } %>

    </body>
</html>