/**
 * The preload script runs before. It has access to web APIs
 * as well as Electron's renderer process modules and some
 * polyfilled Node.js functions.
 * 
 * https://www.electronjs.org/docs/latest/tutorial/sandbox
 */
const { ipcRenderer, contextBridge } = require('electron')

contextBridge.exposeInMainWorld(
  'comunicacion',
  {
    inicioUsuario: (usuario) => ipcRenderer.send('inicio-sesion', usuario),
    listadoInventario: (canal, callback) =>ipcRenderer.on('listado-inventario',callback)
  }
)
contextBridge.exposeInMainWorld(
  'envio',
  {
    listadoInventario: (producto) => ipcRenderer.send('listado-inventario', producto),
    actualizarProducto: (canal, callback) =>ipcRenderer.on('actualizar-producto',callback)  
  }
)
contextBridge.exposeInMainWorld(
  'solicitudes',
  {
    listadoInventario: (producto) => ipcRenderer.send('listado', producto),
    actualizarProducto: (canal, callback) =>ipcRenderer.on('pedidos',callback)  
  }
)


