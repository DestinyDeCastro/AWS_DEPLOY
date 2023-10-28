<?php
// Cargar las dependencias (asegúrate de que composer install se haya ejecutado)
require 'vendor/autoload.php';

use Carbon\Carbon;

try {
    // Obtener la fecha y hora actual con Carbon
    $date = Carbon::now();

    // Mostrar la fecha y hora actual en un formato legible
    echo "Current Date and Time: " . $date->toDayDateTimeString();
} catch (Exception $e) {
    // Manejar cualquier error que pueda ocurrir al usar Carbon
    echo "Error: " . $e->getMessage();
}
?>
