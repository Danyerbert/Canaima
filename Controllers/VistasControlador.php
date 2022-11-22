<?php

require_once "./Models/VistasModelo.php";

class VistasControlador extends VistasModelo{
    // Obtener plantilla 
    public function obtener_plantilla_controlador(){
        return require_once "./view/plantilla.php";
    }
    
    // Obtener vistas controlador 
    public function obtener_vistas_controlador(){
        if (isset($_GET['views'])) {
            $ruta = explode("/",$_GET['views']);
            $respuesta = VistasModelo::obtener_vistas_modelo($ruta[0]);
        } else {
            $respuesta = "login"; 
        }
        return $respuesta;
    }
}