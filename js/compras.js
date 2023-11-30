// compras.js
function buscarProducto() {
    const codigoProducto = document.getElementById('codigoProducto').value;

    const urlPhp1 = '../php/Stock/buscarCodigo.php';

    fetch(`${urlPhp1}?codigo=${codigoProducto}`)
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                alert(data.error);
                resetForm();
            } else {
                document.getElementById('nombreProducto').value = data.nombreProducto;
                document.getElementById('costo').value = data.costo;
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
}

function registrarCompra() {
    const codigoProducto = document.getElementById('codigoProducto').value;
    const unidadesCompradas = parseInt(document.getElementById('unidadesCompradas').value) || 0;

    const formData = new FormData();
    formData.append('codigoProducto', codigoProducto);
    formData.append('unidadesCompradas', unidadesCompradas);

    const urlPhp2 = '../php/Stock/compras.php';

    fetch(urlPhp2, {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        alert(data);
        resetForm();
    })
    .catch(error => {
        console.error('Error:', error);
    });
}

function resetForm() {
    document.getElementById('codigoProducto').value = '';
    document.getElementById('nombreProducto').value = '';
    document.getElementById('costo').value = '';
    document.getElementById('unidadesCompradas').value = '';
}
