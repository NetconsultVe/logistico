<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\lp_ordenoperaciones_responsable;
use App\lp_ordenoperaciones;
use App\lp_config;
use App\lp_ordenoperaciones_planificacion;
use DB;
use App\lp_ordenoperaciones_asignacion;
use Carbon\Carbon;
use App\lp_cliente_distribuidora;
use App\lp_productos_presentacion;
use App\lp_distribuidora_almacenes_incorporacion;

class OrdenOperacionesController extends Controller
{
    public function list_OrdenOperacionesResponsable(Request $a){

        return lp_ordenoperaciones_responsable::all();

    }

    public function list_OrdenOperaciones(Request $a){

        $exist_Planificado = lp_ordenoperaciones::where('status','=',1)->count('id');
        $str_Sql = "SELECT ". $exist_Planificado ." As count_Planificado,
        lp_ordenoperaciones.id,
        lp_ordenoperaciones.FechaInicio,
        lp_ordenoperaciones.FechaFin,
        lp_ordenoperaciones.cod_OrdenOperacion,
        lp_ordenoperaciones.`Status`,
        lp_ordenoperaciones_responsable.Nombre,
        lp_ordenoperaciones_responsable.TelefonoPpal
        FROM
        lp_ordenoperaciones
        INNER JOIN lp_ordenoperaciones_responsable ON lp_ordenoperaciones.id_OrdenOperacionesResponsable = lp_ordenoperaciones_responsable.id
        ";
        return DB::select($str_Sql); 

    }



    public function list_panaderias(Request $a){

        $str_Sql = "SELECT DISTINCT
        lp_cliente.NombrePanaderia,
        lp_cliente_asignacion.cant_Autorizada,
        lp_cliente.UltimoDespacho,
        lp_cliente.`Status`,
        IFNULL(lp_ordenoperaciones_planificacion.id_OrdenOperaciones,0) AS chek_planificada,
        lp_ordenoperaciones_planificacion.cant_Planificada,
        lp_cliente.id AS id_cliente
        FROM
        lp_cliente
        LEFT JOIN lp_ordenoperaciones_planificacion ON lp_cliente.id = lp_ordenoperaciones_planificacion.id_Cliente
        INNER JOIN lp_cliente_asignacion ON lp_cliente.id = lp_cliente_asignacion.id_cliente
        WHERE
        lp_cliente.id_Distribuidora = " . $a->id_Distribuidora;
        return DB::select($str_Sql); 
    }




    public function asig_OrdenOperaciones(Request $a){

    $OP_Correlativo = lp_config::where('id','=',1)->value('OrdenOperacion') + 1;
    $OP_Correlativo = strval($OP_Correlativo);
    $cod_op = 'OP-2019-'.$OP_Correlativo;

    $OP_Correlativo = lp_config::where('id','=',1)->update([
        'OrdenOperacion' => $OP_Correlativo
    ]);

        return lp_ordenoperaciones::create([
            'FechaInicio' => $a->FechaInicio ,
            'FechaFin' => $a->FechaFin,
            'cod_OrdenOperacion' => $cod_op,
            'id_OrdenOperacionesResponsable' => $a->id_Responsable,        
        ]);

    }

    public function asig_PreOrdenOperaciones(Request $a){
        $a = (object) $a;
        $str_Sql = "DELETE from lp_ordenoperaciones_planificacion WHERE id > 0";
        DB::select($str_Sql); 
        $CostoSaco = lp_productos_presentacion::where('id','=','2')->value('PrecioVenta');
        $i = 0;
        
        $max = count($a->array_Panaderia);
        while ($i < $max) {
            $id_ClienteDistribuidora = lp_cliente_distribuidora::where('id_cliente','=',$a->id_cliente)->where('id_Distribuidora','=',$a->id_Distribuidora)->value('id');

            lp_ordenoperaciones_planificacion::create([
                'id_OrdenOperaciones'=> $a->array_Panaderia[$i]['id_OrdenOperacion'],
                'id_Cliente'=> $a->array_Panaderia[$i]['id_Cliente'],
                'id_Distribuidora'=> $a->array_Panaderia[$i]['id_Distribuidora'],
                'id_ClienteDistribuidora'=> $id_ClienteDistribuidora,
                'id_ProductoPresentacion'=> 2,
                'cant_Planificada'=> $a->array_Panaderia[$i]['cant_Planificada'],
                'CostoPorSaco' => $CostoSaco
            ]);           
            $i++;
        }

        return lp_ordenoperaciones::where('id','=',$a->array_Panaderia[0]['id_OrdenOperacion'])->update([
            'status' => 1,
        ]);
        return 1;
    }

    public function asing_ProcesarOrdenOperaciones(Request $a){
        $ArrayExistencia = lp_distribuidora_almacenes_incorporacion::where('id_DistribuidoraAlmacenes','=', $a->id_AlmacenDistribuidora)->where('cant_Existencia','>',0)->orderBy('id','ASC')->get();
        $Techo = $a->cant_OP;
        $i = 0;
        while ($Techo > 0) {
            $Existencia =  $ArrayExistencia[$i]->cant_Existencia;
            $residuo = intval($Techo) - intval($Existencia);
            if ($residuo > 0){
                lp_distribuidora_almacenes_incorporacion::where('id','=',$ArrayExistencia[$i]->id)->update([
                    'cant_Existencia' => 0,
                    'cant_Comprometida' => $Existencia + $ArrayExistencia[$i]->cant_Comprometida,
                ]);
                $Techo = $residuo;
                $i++;
            }else{
                $resto = $Existencia -$Techo;
                $Techo = 0;
                lp_distribuidora_almacenes_incorporacion::where('id','=',$ArrayExistencia[$i]->id)->update([
                    'cant_Existencia' => $resto,
                    'cant_Comprometida' => $Existencia + $ArrayExistencia[$i]->cant_Comprometida,
    
                ]);
            
            }

        }
        $date = Carbon::now();
        $str_Sql = "call asig_OrdenOperaciones(". $a->id_OrdenOperaciones . ",'" . $date->format('d-m-Y') . "', " . $a->id_AlmacenDistribuidora . ")";
        return DB::select($str_Sql);
    }

    public function asig_CancelOrdenOperaciones(Request $a){
        $str_Sql = "DELETE from lp_ordenoperaciones_planificacion WHERE id > 0 ";
        DB::select($str_Sql); 

        return lp_ordenoperaciones::where('id','=',$a->id_OrdenOperaciones)->update([
            'status' => 0,
        ]);
    }

    public function Asing_ActivarOrdenOperaciones(Request $a){
        lp_ordenoperaciones::where('status','=',3)->update([
            'status' => 2,
        ]);

        return lp_ordenoperaciones::where('id','=',$a->id_OrdenOperaciones)->update([
            'status' => 3,
        ]);
        
    }

    public function Asing_CerrarOrdenOperaciones(Request $a){

        return lp_ordenoperaciones::where('id','=',$a->id_OrdenOperaciones)->update([
            'status' => 4,
        ]);
        
    }

    public function Asing_DespachoPanaderia(Request $a){

        return lp_ordenoperaciones_asignacion::where('id','=',$a->id_OrdenOperacionesAsignacion)->update([
            'FechaDespacho'=> $a->FechaAsignacion,
            'status'=> 1    
        ]);
    }

    public function noti_CelDespachoPanaderia(Request $a){
        return lp_ordenoperaciones_asignacion::where('id','=',$a->id_OrdenOperacionesAsignacion)->update([
            'NotificadoPhone'=> 1,
            'status'=> 2    
        ]);
    }

    public function entrega_PanaderiaDespacho(Request $a){
        $ArrayExistencia = lp_distribuidora_almacenes_incorporacion::where('id_DistribuidoraAlmacenes','=', $a->id_AlmacenDistribuidora)->where('cant_Comprometida','>',0)->orderBy('id','ASC')->get();
        $Techo = $a->cant_Asignada;

        $i = 0;
        while ($Techo > 0) {
            $Existencia =  $ArrayExistencia[$i]->cant_Comprometida;
            $residuo = intval($Techo) - intval($Existencia);
            if ($residuo > 0){
                lp_distribuidora_almacenes_incorporacion::where('id','=',$ArrayExistencia[$i]->id)->update([
                    'cant_Comprometida' => 0,
                    
                ]);
                $Techo = $residuo;
                $i++;
            }else{
                $resto = $Existencia -$Techo;
                $Techo = 0;
                lp_distribuidora_almacenes_incorporacion::where('id','=',$ArrayExistencia[$i]->id)->update([
                    'cant_Comprometida' => $resto,
                   
    
                ]);
            
            }

        };   
        return lp_ordenoperaciones_asignacion::where('id','=',$a->id_OrdenOperacionesAsignacion)->update([
            'status'=> 3   
        ]);
    }
    
    // public function descuentainventario(Request $a){
    //     $str_Sql = "SELECT
    //     lp_distribuidora_almacenes_incorporacion.id,
    //     lp_distribuidora_almacenes_incorporacion.cant_Existencia,
    //     lp_distribuidora_almacenes_incorporacion.cant_Comprometida
    //     FROM
    //     lp_distribuidora_almacenes_incorporacion
    //     WHERE
    //     lp_distribuidora_almacenes_incorporacion.cant_Existencia > 0 AND
    //     lp_distribuidora_almacenes_incorporacion.id_DistribuidoraAlmacenes = " . $a->id_DistribuidoraAlmacenes . " ORDER BY lp_distribuidora_almacenes_incorporacion.id ASC";
    //     $ArrayExistencia = DB::select($str_Sql);
    //     $Techo = $a->cantParaComprometer;
    //     $i = 0;
    //     while ($Techo > 0) {
    //         $Existencia =  $ArrayExistencia[$i]->cant_Existencia;
    //         $id =  $ArrayExistencia[$i]->id;
    //         $residuo = $Techo - $Existencia;
    //         if ($residuo > 0){
    //             lp_distribuidora_almacenes_incorporacion::where('id','=',$id)->update([
    //                 'cant_Existencia' => 0,
    //                 'cant_Comprometida' => $Existencia + $ArrayExistencia[$i]->cant_Comprometida,
    //             ]);
    //             $i++;
    //         }else{
    //             $resto = $Existencia -$Techo;
    //             $Techo = 0;
    //             if ($residuo > 0){
    //                 lp_distribuidora_almacenes_incorporacion::where('id','=',$id)->update([
    //                     'cant_Existencia' => $resto,
    //                     'cant_Comprometida' => $Existencia + $ArrayExistencia[$i]->cant_Comprometida,
    
    //                 ]);
    //         }
    //     }
    //     }
    // }


    public function cant_OP(){
        return lp_ordenoperaciones_planificacion::sum('cant_Planificada');
    }

    public function cant_MaxOP(Request $a){
        return lp_distribuidora_almacenes_incorporacion::where('id_DistribuidoraAlmacenes','=',$a->id_AlmacenDistribuidora)->sum('cant_Existencia');
    }

    public function list_AsignaFecha(Request $a){
        $str_Sql = "SELECT DISTINCT        
        lp_cliente.NombrePanaderia,
        lp_ordenoperaciones_asignacion.cant_SacosAsignada,
        lp_ordenoperaciones_asignacion.FechaDespacho,
        lp_ordenoperaciones_asignacion.id AS id_OrdenOperacionesAsignacion,
        lp_ordenoperaciones.FechaInicio,
        lp_ordenoperaciones.FechaFin        
        FROM
        lp_ordenoperaciones_asignacion
        INNER JOIN lp_cliente ON lp_cliente.id = lp_ordenoperaciones_asignacion.id_Cliente
        INNER JOIN lp_ordenoperaciones ON lp_ordenoperaciones_asignacion.id_OrdenOperaciones = lp_ordenoperaciones.id
        WHERE
        lp_ordenoperaciones.`Status` = 3 AND
        lp_ordenoperaciones_asignacion.id_Almacen = ". $a->id_AlmacenDistribuidora;
        return DB::select($str_Sql);
    }


    public function list_Notificacion(Request $a){
        $str_Sql = "SELECT DISTINCT
        lp_cliente.NombrePanaderia,
        lp_ordenoperaciones_asignacion.id AS id_OrdenOperacionesAsignacion,
        lp_cliente.PersonaContacto,
        lp_cliente.TelePersonaContacto,
        lp_ordenoperaciones_asignacion.cant_SacosAsignada,
        lp_ordenoperaciones_asignacion.CostoDespacho,
        lp_ordenoperaciones_asignacion.FechaDespacho,
        lp_ordenoperaciones_asignacion.NotificadoPhone,
        lp_ordenoperaciones_asignacion.`Status`     
        FROM
                lp_ordenoperaciones_asignacion
                INNER JOIN lp_cliente ON lp_cliente.id = lp_ordenoperaciones_asignacion.id_Cliente
                INNER JOIN lp_ordenoperaciones ON lp_ordenoperaciones.id = lp_ordenoperaciones_asignacion.id_OrdenOperaciones
        WHERE
        lp_ordenoperaciones.`Status` = 3 AND
        lp_ordenoperaciones_asignacion.id_Almacen =". $a->id_AlmacenDistribuidora;
        return DB::select($str_Sql);
    }

// Fin
}
