<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_silo extends Model
{
    protected $table = 'lp_silo';
    protected $fillable = [
        'Nombre',
        'Direccion',
        'Telefono',
        'Correo',
        "id_Responsable"
    ];
}
