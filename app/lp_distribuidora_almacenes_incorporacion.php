<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_distribuidora_almacenes_incorporacion extends Model
{
    protected $table = 'lp_distribuidora_almacenes_incorporacion';
    protected $fillable = [
        'id_ProductosPresentacion',
        'id_DistribuidoraAlmacenes',
        'id_DistribuidoraAsignacion',
        'id_SiloAlmacenesIncorporacion',
        'PrecioDistribuidora',
        'PrecioPanaderia',
        'cant_Recibida',
        'cant_Existencia',
        'cant_Comprometida',
        'cant_Merma',
        'Status',
        'FechaRecepcion',    
    ];
}
