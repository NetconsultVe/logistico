<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_productos_presentacion extends Model
{
    protected $table = 'lp_productos_presentacion';
    protected $fillable = [
        'id_Producto',
        'id_Presentacion',
        'id_ProductosTipo'       
    ];
}
