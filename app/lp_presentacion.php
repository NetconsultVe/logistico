<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_presentacion extends Model
{
    protected $table = 'lp_presentacion';
    protected $fillable = [
        'Presentacion',
        'PesoKg',
        'Observacion'       
    ];
}
