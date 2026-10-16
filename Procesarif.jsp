<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Etiquetas JSTL</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;700&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <c:if test="${empty param.nombre}">
        <c:redirect url="Datosif.jsp">
            <c:param name="error" value="Nombre obligatorio"/>
        </c:redirect>
    </c:if>
    <c:if test="${empty param.apellido1}">
        <c:redirect url="Datosif.jsp">
            <c:param name="error" value="Primer apellido obligatorio"/>
        </c:redirect>
    </c:if>

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
                    <li><a href="Datosif.jsp" class="is-active">Datosif.jsp</a></li>
                    <li><a href="lenguaje.jsp">lenguaje.jsp</a></li>
                    <li><a href="catch.jsp">catch.jsp</a></li>
                    <li><a href="foreach.jsp">foreach.jsp</a></li>
                    <li><a href="ForTokens.jsp">ForTokens.jsp</a></li>
                    <li><a href="Informacion.jsp">Informacion.jsp</a></li>
                    </ul>
                </div>
            </aside>

            <main class="workspace">
                <p class="pathline">C:\JSTLejercicios\<b>Procesarif.jsp</b><span class="cursor"></span></p>
                <section class="win">
                    <span class="win-title">Procesarif.jsp</span>
                    <div class="win-body">
                        <h1>Imprimiendo par&aacute;metros con JSTL</h1>
                        <div class="panel panel-warning">
                            <div class="panel-body">
                                <p>Nombre: <strong><c:out value="${param.nombre}" /></strong></p>
                                <p>Primer apellido: <strong><c:out value="${param.apellido1}" /></strong></p>
                                <p>Segundo apellido: <strong><c:out value="${param.apellido2}" /></strong></p>
                            </div>
                        </div>
                        <a href="Datosif.jsp" class="btn btn--ghost">Volver</a>
                    </div>
                    <span class="win-foot">c:if</span>
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
