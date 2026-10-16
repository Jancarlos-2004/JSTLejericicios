<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicios JSTL</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;700&amp;display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <nav class="sysbar" id="menu">
        <a class="brand" href="#">Ejercicios JSTL</a>
        <ul>
            <li><a class="nav-link" href="index.jsp">Inicio</a></li>
            <li><a class="nav-link" href="index.jsp#seccion-ejercicios">Ejercicios</a></li>
            <li><a class="nav-link" href="index.jsp#Derechos">Derechos Reservados</a></li>
        </ul>
        <span class="clock" id="reloj" aria-hidden="true">00:00:00</span>
    </nav>

    <div class="shell">
            <aside class="win win--side" aria-label="Explorador de archivos">
                <span class="win-title">Archivos</span>
                <div class="win-body">
                    <div class="tree-root">JSTLejercicios/</div>
                    <ul class="tree">
                    <li><a href="index.jsp" class="is-active">index.jsp</a></li>
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
                    <li><a href="Informacion.jsp">Informacion.jsp</a></li>
                    </ul>
                </div>
            </aside>

            <main class="workspace workspace--wide">
                <p class="pathline">C:\JSTLejercicios\<b>index.jsp</b><span class="cursor"></span></p>
                <section class="win">
                    <span class="win-title">index.jsp</span>
                    <div class="win-body">
                        <div id="seccion-ejercicios">
                        <h1>Ejercicios</h1>
                        <dl class="sysinfo">
                            <dt>proyecto</dt><dd>JSTLejercicios</dd>
                            <dt>ejercicios</dt><dd>9</dd>
                            <dt>etiquetas</dt><dd>core, sql</dd>
                            <dt>base de datos</dt><dd>MySQL, puerto 3307 (ejercicio 9)</dd>
                        </dl>
                        <div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">Ejercicios</div>
                                <div class="mods">
                    <div class="mod">
                        <span class="mod-file">Eje1.jsp</span>
                        <div>
                            <h3>Ejercicio 1</h3>
                            <p>Primer Ejemplo con <span class="hl">JSTL</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='Eje1.jsp'">Visualizar Ejercicio</button>
                    </div>
                    <div class="mod">
                        <span class="mod-file">Datos.jsp</span>
                        <div>
                            <h3>Ejercicio 2 - Datos</h3>
                            <p>Capturar los datos, <span class="hl">usando JSTL.</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='Datos.jsp'">Visualizar Ejercicio</button>
                    </div>
                    <div class="mod">
                        <span class="mod-file">set1.jsp</span>
                        <div>
                            <h3>Ejercicio 3 - c:set</h3>
                            <p>Usando la etiqueta set <span class="hl">con JSTL.</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='set1.jsp'">Visualizar Ejercicio</button>
                    </div>
                    <div class="mod">
                        <span class="mod-file">Datosif.jsp</span>
                        <div>
                            <h3>Ejercicio 4 - c:if</h3>
                            <p>Capturar los datos con if, <span class="hl">usando JSTL.</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='Datosif.jsp'">Visualizar Ejercicio</button>
                    </div>
                    <div class="mod">
                        <span class="mod-file">lenguaje.jsp</span>
                        <div>
                            <h3>Ejercicio 5 - choose/when/otherwise</h3>
                            <p>Especificada en el atributo test, <span class="hl">usando JSTL.</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='lenguaje.jsp'">Visualizar Ejercicio</button>
                    </div>
                    <div class="mod">
                        <span class="mod-file">catch.jsp</span>
                        <div>
                            <h3>Ejercicio 6 - c:catch</h3>
                            <p>Usando la sentencia Catch <span class="hl">con JSTL.</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='catch.jsp'">Visualizar Ejercicio</button>
                    </div>
                    <div class="mod">
                        <span class="mod-file">foreach.jsp</span>
                        <div>
                            <h3>Ejercicio 7 - c:forEach</h3>
                            <p>Usando la sentencia Foreach <span class="hl">con JSTL.</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='foreach.jsp'">Visualizar Ejercicio</button>
                    </div>
                    <div class="mod">
                        <span class="mod-file">ForTokens.jsp</span>
                        <div>
                            <h3>Ejercicio 8 - c:forTokens</h3>
                            <p>Usando ForTokens <span class="hl">con JSTL.</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='ForTokens.jsp'">Visualizar Ejercicio</button>
                    </div>
                    <div class="mod">
                        <span class="mod-file">Informacion.jsp</span>
                        <div>
                            <h3>Ejercicio 9 - Base de datos</h3>
                            <p>Usando Base de datos <span class="hl">con JSTL.</span></p>
                        </div>
                        <button class="btn" onclick="window.location.href='Informacion.jsp'">Visualizar Ejercicio</button>
                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <span class="win-foot">indice</span>
                </section>
            </main>
    </div>

    <footer id="Derechos">
        <p>JAN CARLOS GALVIS&copy; Derechos Reservados.</p>
        <div class="sb-right">
            <a href="#">Facebook</a>
            <a href="#">Instagram</a>
            <a href="#">Twitter</a>
            <a href="#">YouTube</a>
            <span>JSTL 1.2</span>
            <span>UTF-8</span>
        </div>
    </footer>

    <script src="js/sistema.js"></script>
</body>
</html>
