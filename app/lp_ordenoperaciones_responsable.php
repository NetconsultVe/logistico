<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_ordenoperaciones_responsable extends Model
{
    protected $table = 'lp_ordenoperaciones_responsable';
    protected $fillable = [
        'Nombre',
        'Cedula',
        'TelefonoPpal',
        'Email'       
    ];
}
