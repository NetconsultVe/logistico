<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_ordenoperaciones_asignacion_detalle extends Model
{
    protected $table = 'lp_ordenoperaciones_asignacion_detalle';
    protected $fillable = [
        'id_OrdenOperacionesAsignacion',
        'id_DistribuidoraAlmacen',
        'cant_Asignada'        
    ];
}
