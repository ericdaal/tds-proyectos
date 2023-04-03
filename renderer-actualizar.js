var codigo = document.getElementById('codigo')
var nombre = document.getElementById('nombre')
var descripcion = document.getElementById('descripcion')
var guardar = document.getElementById('save')
var cancelar = document.getElementById('delete')
window.envio.actualizarProducto('actualizar-producto', function (event, args) {
    var datos  = args.split('|')
    codigo.value = datos[0]
    nombre.value = datos[1]
    descripcion.value = datos[2]
})
cancelar.addEventListener('click', function (evento) {
    alert('Pendiente Desarrollar')
})
guardar.addEventListener('click', function (evento) {
    alert('Pendiente Desarrollar')
})