<?php

require_once "./Config/app.php";
require_once "./Controllers/VistasControlador.php";

$plantilla  = new VistasControlador();
$plantilla->obtener_plantilla_controlador();