<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use App\lp_silo_almacenes;
use App\lp_distribuidora_almacenes;


class AlmacenesController extends Controller
{

    public function new_DistAlmacen(Request $a){
        $Codigo = "Cod-001";
        $lp_silo = lp_distribuidora_almacenes::create([
            'id_Distribuidora' => $a->id_Distribuidora,
            'cod_Almacen' => $Codigo,
            'NombreAlmacen' => $a->NameAlmacen
           ]);
           return $lp_silo;
    }

    public function new_SiloAlmacen(Request $a){
        $Codigo = "Cod-001";
        $lp_silo = lp_silo_almacenes::create([
            'id_Silo' => $a->id_Silo,
            'cod_Almacen' => $Codigo,
            'NombreAlmacen' => $a->NameAlmacen,
            'id_TipoAlmacen' => $a->id_TipoAlmacen
           ]);
           return $lp_silo;
    }

    public function list_SiloAlmacenUpdate(Request $a){
        $str_Sql = "SELECT
        lp_silo_almacenes.NombreAlmacen
        FROM
        lp_silo_almacenes
        WHERE
        lp_silo_almacenes.id = ".$a->id_Almacen;
        return DB::select($str_Sql);
    }

    public function list_SiloAlmacenTipo(Request $a){
        $str_Sql = "SELECT
        lp_silo_almacenes_tipo.id,
        lp_silo_almacenes_tipo.TipoAlmacen AS Nombre
        FROM
        lp_silo_almacenes_tipo";
        return DB::select($str_Sql);
    }

    public function list_SiloAlmacenes(Request $a){
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

    public function list_DistribuidoraAlmacenes(Request $a){
        $str_Sql = "SELECT
        lp_distribuidora_almacenes.cod_Almacen,
        lp_distribuidora_almacenes.NombreAlmacen,
        lp_distribuidora_almacenes.id
        FROM
        lp_distribuidora_almacenes
        WHERE
        lp_distribuidora_almacenes.id_Distribuidora = ".$a->id_Distribuidora;
        return DB::select($str_Sql);
    }

    public function update_SiloAlmacen(Request $a){
        $resp = DB::table('lp_silo_almacenes')->where('id', $a->id_Almacen)->update([
            'NombreAlmacen' => $a->NameAlmacenUp,
            'id_TipoAlmacen' => $a->id_TipoAlmacenUp
        ]);
        return $resp;
    }

    public function update_DistAlmacen(Request $a){
        $resp = DB::table('lp_distribuidora_almacenes')->where('id', $a->id_Almacen)->update([
            'NombreAlmacen' => $a->NameAlmacenUp
        ]);
        return $resp;
    }
}
