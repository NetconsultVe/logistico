<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use App\lp_silo_almacenes;


class AlmacenesController extends Controller
{

    public function new_Almacen(Request $a){
        $Codigo = "Cod-001";
        $lp_silo = lp_silo_almacenes::create([
            'id_Silo' => $a->id_Silo,
            'cod_Almacen' => $Codigo,
            'NombreAlmacen' => $a->NameAlmacen,
            'id_TipoAlmacen' => $a->id_TipoAlmacen
           ]);
           return $lp_silo;
    }

    public function list_AlmacenTipo(){
        $str_Sql = "SELECT
        lp_silo_almacenes_tipo.id,
        lp_silo_almacenes_tipo.TipoAlmacen AS Nombre
        FROM
        lp_silo_almacenes_tipo";
        return DB::select($str_Sql);
    }

    public function list_Almacenes(Request $a){
        $str_Sql = "SELECT
        lp_silo_almacenes.id,
        lp_silo_almacenes.cod_Almacen,
        lp_silo_almacenes.NombreAlmacen,
        lp_silo_almacenes_tipo.TipoAlmacen,
        lp_silo.Nombre AS Silo,
        lp_silo_almacenes_tipo.id AS id_TipoAlmacen,
        lp_silo.id AS id_Silo
        FROM
                lp_silo_almacenes
                INNER JOIN lp_silo_almacenes_tipo ON lp_silo_almacenes.id_TipoAlmacen = lp_silo_almacenes_tipo.id
                INNER JOIN lp_silo ON lp_silo_almacenes.id_Silo = lp_silo.id
        WHERE
                lp_silo_almacenes.id_Silo = ".$a->id_Silo;
        return DB::select($str_Sql);
    }
}
