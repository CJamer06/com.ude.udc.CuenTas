// Esta función se ejecutará cada vez que el usuario haga scroll
window.onscroll = function() {
    mostrarOcultarBoton();
};

// Función para mostrar u ocultar el botón según la posición del scroll
function mostrarOcultarBoton() {
    var botonVolverArriba = document.getElementById("btnVolverArriba");

    // Si el scroll es mayor a 20px desde la parte superior, muestra el botón, de lo contrario, lo oculta
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        botonVolverArriba.style.display = "block";
    } else {
        botonVolverArriba.style.display = "none";
    }
}

function volverArriba() {
    document.body.scrollTop = 0; // Para navegadores antiguos
    document.documentElement.scrollTop = 0; // Para navegadores modernos
}

function togglePasswordVisibility() {
    var iconoVisibilidad = document.getElementById("iconoVisibilidad");
    var visibilidadTexto = document.getElementById("ingresarContraseña");
    const cambioIcono = iconoVisibilidad.innerText;

    console.log(cambioIcono);

    
    if (cambioIcono === "visibility") {
        iconoVisibilidad.textContent = "visibility_off";
        visibilidadTexto.type = "text";

    } else if (cambioIcono !== "visibility") {
        iconoVisibilidad.textContent = "visibility";
        visibilidadTexto.type = "password";
    }

    
        

}
