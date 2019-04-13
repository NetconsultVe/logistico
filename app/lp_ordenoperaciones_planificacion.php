<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_ordenoperaciones_planificacion extends Model
{
    protected $table = 'lp_ordenoperaciones_planificacion';
    protected $fillable = [
        'id_OrdenOperaciones',
        'id_Cliente',
        'id_Distribuidora',
        'id_ClienteDistribuidora',
        'id_ProductoPresentacion',
        'cant_Planificada',
        'FechaAsignacion',
        'CostoPorSaco',
        
    ];
}
