<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_ordenoperaciones_asignacion extends Model
{
    protected $table = 'lp_ordenoperaciones_asignacion';
    protected $fillable = [

        'id_OrdenOperaciones',
        'id_Cliente',
        'id_ClienteDistribuidora',
        'id_ProductoPresentacion',
        'id_Distribuidora',
        'id_Almacen',
        'FechaAsignacion',
        'FechaDespacho',
        'DiaDespacho',
        'cant_SacosAsignada',
        'cant_TonAsignada',
        'CostoPorSaco',
        'CostoDespacho',
        'Status',
        'NotificadoPhone',
        'NotificadoSMS',
        'NotificadoEmail',

        
    ];
}
