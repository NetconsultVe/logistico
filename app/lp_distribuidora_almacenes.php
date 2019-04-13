<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_distribuidora_almacenes extends Model
{
    protected $table = 'lp_distribuidora_almacenes';
    protected $fillable = [
        'id_Distribuidora',
        'cod_Almacen',
        'NombreAlmacen'
    ];
}
