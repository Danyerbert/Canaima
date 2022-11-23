<?php

if ($peticionAjax) {
    require_once "../Models/usuarioModelo.php";
} else {
    require_once "./Models/usuarioModelo.php";
}

class usuarioControlador extends usuarioModelo
{
    // Controlador para agregar usuario
    public function agregar_usuario_controlador()
    {
    }
}
