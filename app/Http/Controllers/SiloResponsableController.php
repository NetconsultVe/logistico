<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use App\lp_silo_responsable;
use App\lp_ordenoperaciones_responsable;

class SiloResponsableController extends Controller
{

    public function new_SiloResponsable(Request $a){
        $lp_silo = lp_silo_responsable::create([
            'Nombre' => $a->NameResponsable,
            'Cedula' => $a->CedulaResponsable,
            'TelefonoPpal' => $a->TelefonoResponsable,
            'Email' => $a->EmailResponsable
           ]);
           return $lp_silo;
    }

    public function list_SiloResponsables(){
        $str_Sql = "SELECT
        lp_silo_responsable.id,
        lp_silo_responsable.Nombre,
        lp_silo_responsable.Cedula,
        lp_silo_responsable.TelefonoPpal,
        lp_silo_responsable.Email
        FROM
        lp_silo_responsable";
        return DB::select($str_Sql);
    }

    public function update_SiloResponsable(Request $a){
        $resp = DB::table('lp_silo_responsable')->where('id', $a->id_Responsable)->update([
            'Nombre' => $a->NameResponsableUp,
            'Cedula' => $a->CedulaResponsableUp,
            'TelefonoPpal' => $a->TelefonoResponsableUp,
            'Email' => $a->EmailResponsableUp
        ]);
        return $resp;
    }


    public function new_OrdenResponsable(Request $a){
        $lp_Orden = lp_ordenoperaciones_responsable::create([
            'Nombre' => $a->NameResponsable,
            'Cedula' => $a->CedulaResponsable,
            'TelefonoPpal' => $a->TelefonoResponsable,
            'Email' => $a->EmailResponsable
           ]);
           return $lp_Orden;
    }

    public function list_OrdenResponsables(){
        $str_Sql = "SELECT
        lp_ordenoperaciones_responsable.id,
        lp_ordenoperaciones_responsable.Nombre,
        lp_ordenoperaciones_responsable.Cedula,
        lp_ordenoperaciones_responsable.TelefonoPpal,
        lp_ordenoperaciones_responsable.Email
        FROM
        lp_ordenoperaciones_responsable";
        return DB::select($str_Sql);
    }

    public function update_OrdenResponsable(Request $a){
        $resp = DB::table('lp_ordenoperaciones_responsable')->where('id', $a->id_Responsable)->update([
            'Nombre' => $a->NameResponsableUp,
            'Cedula' => $a->CedulaResponsableUp,
            'TelefonoPpal' => $a->TelefonoResponsableUp,
            'Email' => $a->EmailResponsableUp
        ]);
        return $resp;
    }
}
