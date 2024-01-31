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

  const guardarMaravilla=(req,res)=>{
    const nombre = req.body.nombre;
    const descripcion = req.body.descripcion;
    const pais = req.body.pais;
    const ciudad = req.body.ciudad;
    
    dbConnection.query("INSERT INTO `maravilla`(`nombre`, `descripcion`, `pais`, `ciudad` ) VALUES (?,?,?,?)",[nombre, descripcion, pais, ciudad],(error,data)=>{
        if(error){
            console.log(error)
            res.status(500).json({'mensaje':"error en el server..."})
        }else{
            console.log(data)
            res.status(201).json({"mensaje":"maravilla cargada en la DB "})
        }
    })
};

const eliminarMaravilla =(req,res)=>{
    const {id}=req.body;
    dbConnection.query ("DELETE INTO `maravilla` WHERE id=?",[id], (err,data)=>{
        if(data){
            res.status(200).json({"mensaje":"mensaje':Maravilla Eliminada"})
        }else{
            res.status(500).json({"mensaje":"error en API "})
        }
    })
    res.status(500).json({'mensaje':"Maravilla Eliminada"})
  };

  const modificarMaravilla=(req,res)=>{
    const id=req.params.id;
    const{nombre,descripcion,pais,ciudad}=req.body;
    console.log(req.body)
    dbConnection.query("UPDATE maravilla SET nombre=?,descripcion=?,pais=?,ciudad=? WHERE id=?",[nombre,descripcion,pais,ciudad,id],(err,data)=>{
        if(data){
            res.status(201).json({"message":"pelicula modificada"})
        }else{
            res.status(500).json({"message":"error en carga "})
        }
    })
}

module.exports={todasLasMaravillas,guardarMaravilla, unaMaravilla ,eliminarMaravilla , modificarMaravilla}



