<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_ordenoperaciones extends Model
{
    protected $table = 'lp_ordenoperaciones';
    protected $fillable = [
        'FechaInicio',
        'FechaFin',
        'cod_OrdenOperacion',
        'id_OrdenOperacionesResponsable',
        'Status'           
    ];
}
