const express=require("express");
const api = express();
const port= "4000";

const {todasLasMaravillas,guardarMaravilla, unaMaravilla} = require('../API_MARAVILLAS/controllers/maravillaControllers');
const cors=require('cors');
require('./config/conexionconDB');//traer el modulo de la conexion

api.use(express.json());
api.use (cors());
//api.use(express.urlencoded({extended:true}))
//aca incorporo las imagenes
api.use('/imagen/',express.static("./imagenes")); //insica el enpoint a donde redirige a la imagen

//ruteo de peticiones
api.get("/lista",todasLasMaravillas);
api.get("/lista/:nombre",unaMaravilla);
api.post("/guardar",guardarMaravilla);


//indico puertos
api.listen(port,() => {
  console.log("Server corriendo en el puerto " + port);
});

module.exports=api


