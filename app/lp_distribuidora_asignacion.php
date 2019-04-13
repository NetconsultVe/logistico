<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_distribuidora_asignacion extends Model
{
    protected $table = 'lp_distribuidora_asignacion';
    protected $fillable = [
        'id_DistribuidoraAlmacenes',
        'FechaAsignacion',
        'cant_Asignada',
        'cant_Recepcionada',
        'Status',
        'id_SiloAlmacen',
        'cant_PorRecepcionar',
        'cant_Existencia',
        'cant_DescMerma'
    ];
}
