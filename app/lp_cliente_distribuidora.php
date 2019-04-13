<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_cliente_distribuidora extends Model
{
    protected $table = 'lp_cliente_distribuidora';
    protected $fillable = [
        'id_Distribuidora',
        'id_Cliente'                               
    ];
}
