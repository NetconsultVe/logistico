<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_cliente_asignacion extends Model
{
    protected $table = 'lp_cliente_asignacion';
    protected $fillable = [
        'id_ProductosPresentacion',
        'cant_Autorizada',
        'UltimoDespacho',
        'Status'                            
    ];
}
