<?php
require_once "mainModel.php";

class usuarioModelo extends mainModel
{
    // Modelo para Agragar usuario
    protected static function agregar_usuario_modelo($datos)
    {
        $sql = mainModel::Conectar()->prepare("INSERT INTO usuarios(usuario, apellido, cedula, password, correo, id_roles) VALUES(:Usuario, :Apellido, :Cedula, :Password, :Correo, :Roles)");

        $sql->bindParam(":Usuario", $datos['Usuario']);
        $sql->bindParam(":Apellido", $datos['Apellido']);
        $sql->bindParam(":Cedula", $datos['Cedula']);
        $sql->bindParam(":Password", $datos['Password']);
        $sql->bindParam(":Correo", $datos['Correo']);
        $sql->bindParam(":Roles", $datos['Roles']);
    }
}
