const express=require("express");
const api = express();
const port= "4000";
//const route=express.Router;
//const dbConnection = require('../API_MARAVILLAS/config/conexionconDB');
const {todasLasMaravillas,unaMaravilla,cargarMaravilla} = require('../API_MARAVILLAS/controllers/maravillaControllers');
const cors=require('cors');
require('./config/conexionconDB');//traer el modulo de la conexion

//route.get("/",todasLasMaravillas);
//route.get("/maravilla/:nombre",unaMaravilla);//peticion que da como informacion el nombre de un alumno para que podamos buscar al mismo.Al ser de tipo get lo pasamos por el head
//api.use("/",cargarMaravilla);//peticion que contiene la informacion en el body*/

api.use(express.json());
//api.use(express.urlencoded({extended:true}));// ESTO DE USA PARA FORMULARIOS, procesar datos enviados a la api que fueron enviarmos por medio de formularios(ver lo enviado por el body convierte en un formato utilizable)
//api.use("",require('./controllers/maravillaControllers'));
api.use (cors());

//ruteo de peticiones
api.get("/lista",todasLasMaravillas);

api.get("/lista/:nombre",unaMaravilla);

api.post("/",cargarMaravilla);

//indicamos puertos
api.listen(port,() => {
  console.log("Server corriendo en el puerto " + port);
});

module.exports=api


