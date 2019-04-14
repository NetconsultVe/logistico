<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_silo_responsable extends Model
{
    protected $table = 'lp_silo_responsable';
    protected $fillable = [
        'Nombre',
        'Cedula',
        'TelefonoPpal',
        'Email'        
    ];
}
