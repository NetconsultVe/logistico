<?php

namespace App\Http\Controllers;
use App\lp_Silo;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;

class SiloController extends Controller
{

    public function new_Silo(Request $a){
        $lp_silo = lp_silo::create([
            'Nombre' => $a->NameSilo,
            'Direccion' => $a->DireccionSilo,
            'Telefono' => $a->TelefonoSilo,
            'Correo' => $a->EmailSilo,
            'id_Responsable'=>$a->id_Responsable
           ]);
           return $lp_silo;
    }
   
    public function list_Silo(){
        return DB::select("call list_Silo");
    }

    public function list_SiloAlmacen(Request $a){
        $str_Sql = 'call list_SiloAlmacen('.$a->id_Silo.', '.$a->id_AlmacenesTipo.')';
        return DB::select($str_Sql);
    }

    public function list_Productos(Request $a){
        $str_Sql = 'call list_Productos('.$a->id_ProductosTipo.')';
        return DB::select($str_Sql);
    }

    public function list_SiloRegistroRecarga(Request $a){
        $str_Sql = 'call list_SiloRegistroRecarga('.$a->id_Silo.')';
        return DB::select($str_Sql);
    }

    public function update_SiloMerma(Request $a){
        $str_Sql = 'call update_SiloMerma('.$a->id_SiloAlmacenIncorporacion.', '.$a->cant_Existencia.', '.$a->cant_Merma.')';
        return DB::select($str_Sql);
    }

    public function update_SiloManufactura(Request $a){
        $date = Carbon::now();
        $date_ = $date->format('d/m/Y');
        $date = "2-".$date->format('dmY')."-";
        $str_Sql = $this->StrSqlNew('update_SiloManufactura', [
            $a->id_SiloAlmacenIncorporacion,
            $a->cant_Existencia,
            $a->cant_Manufacturada,
            "'".$date."'",
            2,
            $a->id_SiloAlmacenes,
            "'".$date_."'"
        ]);
        return DB::select($str_Sql);
    }

    public function inst_SiloRecarga(Request $a){
        $date = Carbon::now();
        $date_ = $date->format('d-m-Y');
        $date = "1-".$date->format('dmY')."-";
        $str_Sql = $this->StrSqlNew('inst_SiloRecarga', [
            $a->cant_Recibida,
            "'".$date."'",
            $a->id_ProductosTipo,
            $a->id_Almacen,
            "'".$a->FechaRecepcion."'",
            "'".$a->Nota."'"
        ]);
        return DB::select($str_Sql);
    }

    public function StrSqlNew($a, $b){
        $strAux = "";
        $strAux .= 'call '.$a.'(';
        for ($i=0; $i < count($b) ; $i++) { 
            $strAux .= $b[$i].", ";
        }
        $strAux = rtrim($strAux);
        $strAux = substr($strAux, 0, -1);
        $strAux .= ')';
        return $strAux;
    }

}
