var nombre = document.getElementById('ingreso')
var actualizar = document.getElementById('update')
var pedidos = document.getElementById('request')
var listado = document.getElementById('list-group')
window.comunicacion.listadoInventario('listado-inventario', function (event, args) {
  //console.log(args)
  nombre.innerText = "Bienvenido";
  listado.innerHTML +=  '<li class="list-group-item">Id Producto | Nombre | Descripcion Marca | Categoria | Presentacion </li>'
  args.forEach(element => {
    //console.log(element)
    listado.innerHTML +=  '<li class="list-group-item">'+ element.idProductos +' | '+ element.nombre +' | '+element.descripcion+' | '+element.marca+' | '+element.categoria+' | '+element.presentacion +'</li>'
    //<span class="badge badge-primary badge-pill">14</span>
  }); 
  const items = document.querySelectorAll('.list-group-item')
  function toggleActive(current, index, arr) {
    arr.forEach(item => {
      if (item !== current) {
  
        item.classList.remove('active');
      }
    });
    current.classList.add('active');
    producto = current.innerText
  }
  
  items.forEach((item, index, arr) => {
    item.addEventListener('click', () => {
      toggleActive(item, index, arr);
    });
  });
})

var producto = ""
actualizar.addEventListener('click', function (evento) {
  evento.preventDefault()
  window.envio.listadoInventario(producto)
})

pedidos.addEventListener('click', function (evento) {
  evento.preventDefault()
  window.solicitudes.listadoInventario(producto)
})
