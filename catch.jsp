<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%!int valor = 0;%><%--Declarando variable tipo int--%>
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
                    <li><a href="catch.jsp" class="is-active">catch.jsp</a></li>
                    <li><a href="foreach.jsp">foreach.jsp</a></li>
                    <li><a href="ForTokens.jsp">ForTokens.jsp</a></li>
                    <li><a href="Informacion.jsp">Informacion.jsp</a></li>
                    </ul>
                </div>
            </aside>

            <main class="workspace">
                <p class="pathline">C:\JSTLejercicios\<b>catch.jsp</b><span class="cursor"></span></p>
                <section class="win">
                    <span class="win-title">catch.jsp</span>
                    <div class="win-body">
                        <h1>Uso de etiqueta catch</h1>
                        <div class="panel panel-primary">
                            <div class="panel-heading">Salida</div>
                            <div class="panel-body">

                <%-- Solo intenta parsear si el usuario ya envio el parametro.
                     Asi la primera carga de la pagina no muestra ningun mensaje. --%>
                <c:if test="${not empty param.parametro}">
                    <c:catch var="error01">
                        <%
                            valor = Integer.parseInt(request.getParameter("parametro"));
                        %>
                    </c:catch>
                </c:if>

                <c:if test="${not empty error01}">
                    <div class="alert alert--err">
                        <strong>Se produjo un error:</strong> ${error01}
                    </div>
                </c:if>
                <c:if test="${not empty param.parametro && valor!=0 && empty error01}">
                    <div class="alert alert--info">
                        <strong>Valor recibido: <%out.print(valor);%></strong>
                    </div>
                </c:if>

                                <div class="actions">
                                    <form role="form">
                                        <input type="hidden" name="parametro" value="5325"/>
                                        <input type="submit" class="btn btn--ghost" value="Enviar '5325'"/>
                                    </form>
                                    <form role="form">
                                        <input type="hidden" name="parametro" value="1234"/>
                                        <input type="submit" class="btn btn--ghost" value="Enviar '1234'"/>
                                    </form>
                                    <form role="form">
                                        <input type="submit" class="btn btn--ghost" value="No enviar el par&aacute;metro"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <a href="index.jsp" class="btn btn--ghost">Volver</a>
                    </div>
                    <span class="win-foot">c:catch</span>
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
