<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="./WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 9 JSTL - Base de datos</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;700&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <nav class="sysbar" id="menu">
        <a class="brand" href="index.jsp">Ejercicios JSTL</a>
        <span class="clock" id="reloj" aria-hidden="true">00:00:00</span>
        <button class="btn" onclick="window.location.href='./Informacion.jsp'">ATRAS</button>
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
                    <li><a href="ForTokens.jsp">ForTokens.jsp</a></li>
                    <li><a href="Informacion.jsp" class="is-active">Informacion.jsp</a></li>
                    </ul>
                </div>
            </aside>

            <main class="workspace">
                <c:set var="nombres" value="${param.nombres}"/>
                <c:set var="apellido1" value="${param.apellido1}"/>
                <c:set var="apellido2" value="${param.apellido2}"/>
                <c:set var="edad" value="${param.edad}"/>

                <c:catch var="errorInsert">
                    <c:if test="${not empty nombres and not empty edad}">
                        <sql:update var="insertar" dataSource="${empleados}">
                            insert into empleados (nombres,apellido1,apellido2,edad) values (?,?,?,?)
                            <sql:param value="${nombres}"/>
                            <sql:param value="${apellido1}"/>
                            <sql:param value="${apellido2}"/>
                            <sql:param value="${edad}"/>
                        </sql:update>
                    </c:if>
                </c:catch>

                <p class="pathline">C:\JSTLejercicios\<b>Procesarinfo.jsp</b><span class="cursor"></span></p>
                <section class="win">
                    <span class="win-title">Procesarinfo.jsp</span>
                    <div class="win-body">
                        <h1>Empleados registrados</h1>

                        <c:catch var="errorSelect">
                            <sql:query var="result" scope="request" dataSource="${empleados}">
                                select * from empleados;
                            </sql:query>
                        </c:catch>

                        <c:if test="${not empty errorSelect or not empty errorInsert}">
                            <div style="background: #fff3cd; color: #856404; padding: 12px; border: 1px solid #ffeeba; border-radius: 4px; margin-bottom: 15px; font-size: 13px;">
                                ⚠️ <b>Nota de base de datos:</b> No se pudo conectar a MySQL (<code>${finalDbUrl}</code>). En local asegúrate de que MySQL esté activo. En Render puedes configurar la variable <code>DB_URL</code>.
                            </div>
                        </c:if>

                        <div id="contenedor">
                            <div class="table-wrap">
                                <table id="tablita" class="tbl">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Nombre</th>
                                            <th>Apellidos</th>
                                            <th>Edad</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test="${not empty result}">
                                            <c:forEach var="fila" items="${result.rows}">
                                                <tr>
                                                    <td><c:out value="${fila.id}" /></td>
                                                    <td><c:out value="${fila.nombres}" /></td>
                                                    <td><c:out value="${fila.apellido1}${fila.apellido2}" /></td>
                                                    <td><c:out value="${fila.edad}" /></td>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <span class="win-foot">sql:update / sql:query</span>
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
