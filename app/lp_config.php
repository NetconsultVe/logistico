<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class lp_config extends Model
{
    protected $table = 'lp_config';
    protected $fillable = [
        'RecargaSilo',
        'OrdenDistribucion',
        'OrdenOperacion',
        'RecargaManufactura',        
    ];
}
