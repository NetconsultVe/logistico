<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_distribuidora extends Model
{
    protected $table = 'lp_distribuidora';
    protected $fillable = [
        'Nombre',
        'Direccion',
        'Correo',
        'Telefono'        
    ];
}
