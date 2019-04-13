<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_productos extends Model
{
    protected $table = 'lp_productos';
    protected $fillable = [
        'Nombre'
    ];
}
