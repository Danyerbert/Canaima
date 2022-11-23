<?php

class VistasModelo
{
    // obtener las vistas
    protected static function obtener_vistas_modelo($vistas)
    {
        $listaBlanca = ["home", "analista"];
        if (in_array($vistas, $listaBlanca)) {
            if (is_file("./view/content/" . $vistas . "-view.php")) {
                $contenido = "./view/content/" . $vistas . "-view.php";
            } else {
                $contenido = "404";
            }
        } elseif ($vistas == "login" || $vistas == "index") {
            $contenido = "login";
        } else {
            $contenido = "404";
        }
        return $contenido;
    }
}
