<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_silo_almacenes extends Model
{
    protected $table = 'lp_silo_almacenes';
    protected $fillable = [
        'id_Silo',
        'cod_Almacen',
        'NombreAlmacen',
        'id_TipoAlmacen'
    ];
}
