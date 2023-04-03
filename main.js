// Modules to control application life and create native browser window
const { app, BrowserWindow, ipcMain } = require('electron')
const path = require('path')
const mysql = require('mysql2')

function createWindow() {
  // Create the browser window.
  const mainWindow = new BrowserWindow({
    width: 800,
    height: 800,
    webPreferences: {
      preload: path.join(app.getAppPath(), 'preload.js')
    }
  })

  // and load the index.html of the app.
  mainWindow.loadFile('index.html')

  // Open the DevTools.
  // mainWindow.webContents.openDevTools()
}

let listado
function createWindowtwo() {
  // Create the browser window.
  listado = new BrowserWindow({
    width: 600,
    height: 700,
    webPreferences: {
      preload: path.join(app.getAppPath(), 'preload.js')
    }
  })

  // and load the index.html of the app.
  listado.loadFile('listado.html')

  // Open the DevTools.
  // mainWindow.webContents.openDevTools()
}

let actualizarProducto
function createWindowthree() {
  // Create the browser window.
  actualizarProducto = new BrowserWindow({
    width: 600,
    height: 700,
    webPreferences: {
      preload: path.join(app.getAppPath(), 'preload.js')
    }
  })

  // and load the index.html of the app.
  actualizarProducto.loadFile('actualizar.html')

  // Open the DevTools.
  // mainWindow.webContents.openDevTools()
}

let pedidos
function createWindowfour() {
  // Create the browser window.
  pedidos = new BrowserWindow({
    width: 600,
    height: 700,
    webPreferences: {
      preload: path.join(app.getAppPath(), 'preload.js')
    }
  })

  // and load the index.html of the app.
  pedidos.loadFile('pedidos.html')

  // Open the DevTools.
  // mainWindow.webContents.openDevTools()
}


// This method will be called when Electron has finished
// initialization and is ready to create browser windows.
// Some APIs can only be used after this event occurs.
app.whenReady().then(() => {
  createWindow()

  app.on('activate', function () {
    // On macOS it's common to re-create a window in the app when the
    // dock icon is clicked and there are no other windows open.
    if (BrowserWindow.getAllWindows().length === 0) createWindow()
  })
})

// Quit when all windows are closed, except on macOS. There, it's common
// for applications and their menu bar to stay active until the user quits
// explicitly with Cmd + Q.
app.on('window-all-closed', function () {
  if (process.platform !== 'darwin') app.quit()
})

// In this file you can include the rest of your app's specific main process
// code. You can also put them in separate files and require them here.
// Conexión a mysql2
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'supermercado'
})

ipcMain.on('inicio-sesion', (event, args) => {
  //console.log(args)
  connection.promise().query('select * from usuarios where nombre_usuario = ? and contrasena = ?', [args[0], args[1]])
    .then(
      ([result, fields]) => {
        connection.promise().query('select * from productos')
        .then(
          ([result, fields]) => {
            //console.log(result)
            createWindowtwo();
            listado.webContents.on('did-finish-load', () => {
              listado.webContents.send('listado-inventario', result)
            })
          }
        )
        .catch((err) => {
          console.log(err)
        }
        )
      }
    )
    .catch((err) => {
      console.log(err)
    }
    )
})

ipcMain.on('listado-inventario', (event, args) => {
  //console.log(args)
  createWindowthree();
  actualizarProducto.webContents.on('did-finish-load', () => {
    actualizarProducto.webContents.send('actualizar-producto', args)
  })
})

ipcMain.on('listado', (event, args) => {
  //console.log(args)
  createWindowfour();
  pedidos.webContents.on('did-finish-load', () => {
    pedidos.webContents.send('pedidos', args)
  })
})