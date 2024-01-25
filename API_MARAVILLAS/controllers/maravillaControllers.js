const express=require('express');
const dbConnection= require('../config/conexionconDB');

const todasLasMaravillas =(req,res)=>{
  dbConnection.query("SELECT * FROM maravilla",(err,data)=>{
      if(err){
          res.status(500).json({'mensaje':err})
      }else{
        console.log(data)
          res.status(200).send(data)
      }
  })};
  const unaMaravilla =(req,res)=>{
    let nombreMaravilla=req.params.nombre;
    dbConnection.query("SELECT * FROM maravilla WHERE nombre=?",[nombreMaravilla],(err,data)=>{
        if(err){
            res.status(500).json({'mensaje':err})
        }else{
            res.send(data)
        }
    })
  };

  const cargarMaravilla=(req,res)=>{
    let {nombre,descripcion,pais,ciudad}= req.body;//destructing
    //console.log(req.body);
    dbConnection.query("INSERT INTO maravilla (nombre,descripcion,pais,ciudad) VALUES ('nombre','descripcion','pais','ciudad')",[nombre,descripcion,pais,ciudad],(error,data)=>{
        if(error){
            console.log(error)
            res.status(500).json({'mensaje':"error en el server..."})
        }else{
            console.log(data)
            res.status(201).json({"mensaje":"maravilla cargada en la DB "})
        }
    })
};
module.exports={todasLasMaravillas,unaMaravilla,cargarMaravilla}



