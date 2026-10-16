/* Reloj decorativo de la barra de menu. No interviene en la logica de la aplicacion. */
(function () {
    var el = document.getElementById('reloj');
    if (!el) { return; }

    function dos(n) { return n < 10 ? '0' + n : String(n); }

    function tick() {
        var d = new Date();
        el.textContent = dos(d.getHours()) + ':' + dos(d.getMinutes()) + ':' + dos(d.getSeconds());
    }

    tick();
    setInterval(tick, 1000);
})();
