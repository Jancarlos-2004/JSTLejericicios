<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>c:forTokens Demo</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;700&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <nav class="sysbar" id="menu">
        <a class="brand" href="index.jsp">Ejercicios JSTL</a>
        <span class="clock" id="reloj" aria-hidden="true">00:00:00</span>
        <button class="btn" onclick="window.location.href='index.jsp'">Volver al Inicio</button>
    </nav>

    <div class="shell">
            <aside class="win win--side" aria-label="Explorador de archivos">
                <span class="win-title">Archivos</span>
                <div class="win-body">
                    <div class="tree-root">JSTLejercicios/</div>
                    <ul class="tree">
                    <li><a href="index.jsp">index.jsp</a></li>
                    </ul>
                    <div class="tree-group">ejercicios/</div>
                    <ul class="tree">
                    <li><a href="Eje1.jsp">Eje1.jsp</a></li>
                    <li><a href="Datos.jsp">Datos.jsp</a></li>
                    <li><a href="set1.jsp">set1.jsp</a></li>
                    <li><a href="Datosif.jsp">Datosif.jsp</a></li>
                    <li><a href="lenguaje.jsp">lenguaje.jsp</a></li>
                    <li><a href="catch.jsp">catch.jsp</a></li>
                    <li><a href="foreach.jsp">foreach.jsp</a></li>
                    <li><a href="ForTokens.jsp" class="is-active">ForTokens.jsp</a></li>
                    <li><a href="Informacion.jsp">Informacion.jsp</a></li>
                    </ul>
                </div>
            </aside>

            <main class="workspace">
                <p class="pathline">C:\JSTLejercicios\<b>ForTokens.jsp</b><span class="cursor"></span></p>
                <section class="win">
                    <span class="win-title">ForTokens.jsp</span>
                    <div class="win-body">
                        <h1>c:forTokens Demo</h1>
                        <div class="panel panel-primary">
                            <div class="panel-heading">Entrada</div>
                            <div class="panel-body">
                                <form role="form" name="forTokensForm" action="ResultTokens.jsp" method="POST">
                                    <div class="form-group field">
                                        <label for="delimText">Enter some text with delimiter:</label>
                                        <input type="text" class="input" name="delimText" id="delimText">
                                    </div>
                                    <div class="form-group field">
                                        <label for="delim">Enter the delimiter:</label>
                                        <input type="text" class="input" id="delim" name="delim">
                                    </div>
                                    <div class="actions">
                                        <input type="submit" class="btn btn--solid" value="Tokenize">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <span class="win-foot">form POST</span>
                </section>
            </main>
    </div>

    <footer id="Derechos">
        <p>&copy; Derechos Reservados.</p>
        <div class="sb-right">
            <span>JSTL 1.2</span>
            <span>UTF-8</span>
        </div>
    </footer>

    <script src="js/sistema.js"></script>
</body>
</html>
