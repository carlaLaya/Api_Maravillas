//coneccion a la DB relacional
//import mysql2 from 'mysql2'

//INFORMACION SOBRE LA BASE DE DATOS Y LOS METODOS DE CONEXION

const mysql2=require('mysql2');
const infoDB={
    host:'localhost',
    user:'root',
    database:'maravillas_del_mundo',
}
const dbConnection=mysql2.createConnection(infoDB);

dbConnection.connect((error)=>{
    if(error){
        if(error.code ==='ER_BAD_DB_ERROR' ){
            console.log("error con la coneccion con la DB: "+ error.sqlMessage)
        }else{
            console.log(error)
        }
    }else{
        console.log("Conexion con DB MySQL exitosa")
    }
});

module.exports=dbConnection;