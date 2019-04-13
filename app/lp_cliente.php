<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_cliente extends Model
{
    protected $table = 'lp_cliente';
    protected $fillable = [
        'NombrePanaderia',
        'Rif',
        'Sica',
        'Direccion',
        'Telefono',
        'CapacidadInstalada',
        'Email',
        'Status',
        'ObservacionStatus',
        'cod_Municipio',
        'cod_Parroquia',
        'UltimoDespacho',
        'PersonaContacto',
        'EmailPersonaContacto',
        'TelePersonaContacto',
        'CedulaPersonaContacto',
        'Latitud',
        'Longitud'
    ];
}
