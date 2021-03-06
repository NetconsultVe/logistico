<?php

namespace App\Http\Controllers;
use App\lp_silo;
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

    public function update_Silo(Request $a){
        $resp = DB::table('lp_silo')->where('id', $a->id_Silo)->update([
            'Nombre' => $a->NameSiloUp,
            'Direccion' => $a->DireccionSiloUp,
            'Telefono' => $a->TelefonoSiloUp,
            'Correo' => $a->EmailSiloUp,
            'id_Responsable'=>$a->id_ResponsableUp
        ]);
        return $resp;
    }

    public function list_Silos(){
        $str_Sql = "SELECT
        lp_silo.id,
        lp_silo.Nombre,
        lp_silo.Direccion,
        lp_silo.Telefono,
        lp_silo_responsable.id AS idResponsable,
        lp_silo_responsable.Nombre AS NombreResponsable,
        lp_silo_responsable.Cedula AS CedulaResponsable,
        lp_silo_responsable.TelefonoPpal AS TelefonoResponsable,
        lp_silo_responsable.Email AS EmailResponsable
        FROM lp_silo LEFT JOIN lp_silo_responsable ON lp_silo.id_Responsable = lp_silo_responsable.id";
        return DB::select($str_Sql);
    }

    public function list_SiloUpdate(Request $a){
        $str_Sql = "SELECT
        lp_silo.Nombre,
        lp_silo.Direccion,
        lp_silo.Telefono,
        lp_silo.Correo
        FROM
        lp_silo
        WHERE
        lp_silo.id = ".$a->id_Silo;
        return DB::select($str_Sql);
    }

    public function list_SiloResponsable(){
        $str_Sql = "SELECT
        lp_silo_responsable.id,
        lp_silo_responsable.Nombre
        FROM
        lp_silo_responsable";
        return DB::select($str_Sql);
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
