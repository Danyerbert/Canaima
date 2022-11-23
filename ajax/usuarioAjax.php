<?php

$peticionAjax = true;
require_once "../Config/app.php";

if () {
    // Instancia al Controlador
    require_once "../Controllers/usuarioControlador.php";
    $ins_usuario = new usuarioControlador();
} else {
    session_start(['name' => 'SOAC']);
    session_unset();
    session_destroy();
    header("Location: " . SERVERURL . "login/");
    exit();
}
