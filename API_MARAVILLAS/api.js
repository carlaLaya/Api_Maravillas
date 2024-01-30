const express=require("express");
const api = express();
const port= "4000";

//const dbConnection = require('../API_MARAVILLAS/config/conexionconDB');
const {todasLasMaravillas,guardarMaravilla, unaMaravilla} = require('../API_MARAVILLAS/controllers/maravillaControllers');
const cors=require('cors');
require('./config/conexionconDB');//traer el modulo de la conexion

api.use(express.json());
//instalo cors para que no haya conflicto al cruzarse los localhost
api.use (cors());


//ruteo de peticiones
api.get("/lista",todasLasMaravillas);
api.get("/lista/:nombre",unaMaravilla);
api.post("/guardar",guardarMaravilla);

//indicamos puertos
api.listen(port,() => {
  console.log("Server corriendo en el puerto " + port);
});

module.exports=api


