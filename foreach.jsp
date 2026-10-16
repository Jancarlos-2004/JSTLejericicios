<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <li><a href="foreach.jsp" class="is-active">foreach.jsp</a></li>
                    <li><a href="ForTokens.jsp">ForTokens.jsp</a></li>
                    <li><a href="Informacion.jsp">Informacion.jsp</a></li>
                    </ul>
                </div>
            </aside>

            <main class="workspace">
                <p class="pathline">C:\JSTLejercicios\<b>foreach.jsp</b><span class="cursor"></span></p>
                <section class="win">
                    <span class="win-title">foreach.jsp</span>
                    <div class="win-body">
                        <h1>Uso de c:forEach</h1>
                        <div class="panel panel-primary">
                            <div class="panel-heading">Salida</div>
                            <div class="panel-body log">
                                <c:forEach begin="1" end="24" step="2" var="hour" varStatus="status">
                                    <p>
                                        <c:out value="${hour}" />
                                        <c:if test="${status.first}">
                                            <strong>Estoy en uno</strong>
                                        </c:if>
                                        <c:if test="${status.count == 5}">
                                            <strong>Estoy en la iteraci&oacute;n numero 5</strong>
                                        </c:if>
                                    </p>
                                </c:forEach>
                            </div>
                        </div>
                        <a href="index.jsp" class="btn btn--ghost">Volver</a>
                    </div>
                    <span class="win-foot">c:forEach</span>
                </section>
            </main>
    </div>

    <footer id="Derechos">
        <p> &copy; Derechos Reservados.</p>
        <div class="sb-right">
            <span>JSTL 1.2</span>
            <span>UTF-8</span>
        </div>
    </footer>

    <script src="js/sistema.js"></script>
</body>
</html>
