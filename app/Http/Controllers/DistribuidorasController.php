<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use App\lp_distribuidora_asignacion;
use App\lp_silo_almacenes_incorporacion;
use App\lp_distribuidora_almacenes_incorporacion;


class DistribuidorasController extends Controller
{
    public function list_MaestroDistribuidoras(Request $a){
        $str_Sql = "SELECT
        lp_distribuidora.id,
        lp_distribuidora.Nombre,
        lp_distribuidora.Direccion,
        lp_distribuidora.Correo,
        lp_distribuidora.Telefono
        FROM
        lp_distribuidora";
        return DB::select($str_Sql);
    }







    public function list_Distribuidoras(Request $a){
        $str_Sql = $this->StrSqlNew('list_Distribuidoras', []);
        return DB::select($str_Sql);
    }

    public function list_Distribuciones(Request $a){
        // $str_Sql = $this->StrSqlNew('list_Distribuciones', [
        //     [$a->id_Almacen, true]
        // ]);
        $str_Sql = "SELECT
        lp_distribuidora.Nombre as Distribuidora,
        lp_distribuidora_almacenes.NombreAlmacen,
        lp_distribuidora_asignacion.FechaAsignacion,
        lp_distribuidora_asignacion.cant_Asignada,
        lp_distribuidora_asignacion.`Status`
        FROM
        lp_distribuidora
        INNER JOIN lp_distribuidora_almacenes ON lp_distribuidora.id = lp_distribuidora_almacenes.id_Distribuidora
        INNER JOIN lp_distribuidora_asignacion ON lp_distribuidora_almacenes.id = lp_distribuidora_asignacion.id_DistribuidoraAlmacenes
        WHERE
        lp_distribuidora_asignacion.id_SiloAlmacen = " . $a->id_Almacen;
        return DB::select($str_Sql);
    }

    public function list_DistribuidorasAlmacenes(Request $a){
        $str_Sql = $this->StrSqlNew('list_DistribuidorasAlmacenes', [
            [$a->id_Distribuidora, true]
        ]);
        return DB::select($str_Sql);
    }

    public function disp_SiloAlmacen(Request $a){
        $str_Sql = $this->StrSqlNew('disp_SiloAlmacen', [
            [$a->id_Almacen, true]
        ]);
        return DB::select($str_Sql);
    }

    public function asig_SiloDistribuidora(Request $a){
        $date = Carbon::now();
        // $str_Sql = $this->StrSqlNew('asig_SiloDistribuidora', [
        //     [$a->id_Almacen, true],
        //     [$a->id_AlmacenDistribuidora, true],
        //     [$date->format('d-m-Y'), false],
        //     [$a->cant_Asignada, true]
        // ]);


       $lp_DistribuidoraAsignacion = lp_distribuidora_asignacion::create([
        'id_DistribuidoraAlmacenes' => $a->id_AlmacenDistribuidora,
        'FechaAsignacion' => $date->format('d-m-Y'),
        'cant_Asignada' => $a->cant_Asignada,
        'id_SiloAlmacen' => $a->id_Almacen,
        'cant_PorRecepcionar'=>$a->cant_Asignada
       ]);

       $id_DistribuidoraAsignacion =  $lp_DistribuidoraAsignacion->id;
       
       $str_Sql = "SELECT ".
       $id_DistribuidoraAsignacion ." as id_DistribuidoraAsignacion,
       lp_silo_almacenes_incorporacion.exist_Manufacturada,
       lp_silo_almacenes_incorporacion.id as id_SiloAlmacenesIncorporacion,
       lp_silo_almacenes_incorporacion.cant_Comprometida
       FROM
       lp_silo_almacenes_incorporacion
       WHERE
       lp_silo_almacenes_incorporacion.id_SiloAlmacenes = ". $a->id_Almacen ." AND
       lp_silo_almacenes_incorporacion.exist_Manufacturada > 0
       ORDER BY
       lp_silo_almacenes_incorporacion.id ASC";
 
       return DB::select($str_Sql);        
    }



    public function asig_DistribuidoraDetalle(Request $a){
        // $str_Sql = $this->StrSqlNew('asig_DistribuidoraDetalle', [
        //     [$a->id_ProductoPresentacion, true],
        //     [$a->id_AlmacenDistribuidora, true],
        //     [$a->id_DistribuidoraAsignacion, true],
        //     [$a->id_SiloAlmacenesIncorporacion, true],
        //     [$a->PrecioDistribuidora, true],
        //     [$a->PrecioPanaderia, true],
        //     [$a->cant_Asignada, true],
        //     [$a->cant_NewExistencia, true]
        // ]);

        lp_silo_almacenes_incorporacion::where('id',$a->id_SiloAlmacenesIncorporacion)->update([
            'cant_Comprometida' =>  $a->cant_Asignada,
            'exist_Manufacturada' => $a->cant_NewExistencia

        ]);

        lp_distribuidora_almacenes_incorporacion::create([
            'id_ProductosPresentacion' => $a->id_ProductoPresentacion ,
            'id_DistribuidoraAlmacenes' => $a->id_AlmacenDistribuidora,
            'id_DistribuidoraAsignacion' => $a->id_DistribuidoraAsignacion,
            'id_SiloAlmacenesIncorporacion' => $a->id_SiloAlmacenesIncorporacion,
            'PrecioDistribuidora' => $a->PrecioDistribuidora,
            'PrecioPanaderia' => $a->PrecioPanaderia,
            'cant_Recibida' => $a->cant_PreAsignada,
            'cant_Existencia' => $a->cant_PreAsignada
        ]);

        return 1;
       //return DB::select($str_Sql);
    }


    public function list_RecepcionDistribuidora(Request $a){

        $str_Sql = "SELECT
        lp_distribuidora_asignacion.FechaAsignacion,
        lp_distribuidora_almacenes.NombreAlmacen,
        lp_distribuidora_asignacion.cant_Asignada,
        lp_distribuidora_asignacion.cant_Recepcionada,
        lp_distribuidora_asignacion.cant_PorRecepcionar,
        lp_distribuidora_asignacion.id AS id_DistribuidoraAsignacion,
        lp_distribuidora_asignacion.`Status`
        FROM
        lp_distribuidora
        INNER JOIN lp_distribuidora_almacenes ON lp_distribuidora.id = lp_distribuidora_almacenes.id_Distribuidora
        INNER JOIN lp_distribuidora_asignacion ON lp_distribuidora_almacenes.id = lp_distribuidora_asignacion.id_DistribuidoraAlmacenes
        WHERE
        lp_distribuidora.id = " . $a->id_Distribuidora . " AND lp_distribuidora_asignacion.status < 2";
        return DB::select($str_Sql);       
        
    }

    public function list_AjusteInventario(Request $a){

        $str_Sql = "SELECT
        lp_distribuidora_asignacion.FechaAsignacion,
        lp_distribuidora_almacenes.NombreAlmacen,
        lp_distribuidora_asignacion.cant_Asignada,
        lp_distribuidora_asignacion.cant_Recepcionada,
        lp_distribuidora_asignacion.cant_Existencia,
        lp_distribuidora_asignacion.cant_DescMerma,
        lp_distribuidora_asignacion.id AS id_DistribuidoraAsignacion,
        lp_distribuidora_asignacion.`Status`

        FROM
        lp_distribuidora
        INNER JOIN lp_distribuidora_almacenes ON lp_distribuidora.id = lp_distribuidora_almacenes.id_Distribuidora
        INNER JOIN lp_distribuidora_asignacion ON lp_distribuidora_almacenes.id = lp_distribuidora_asignacion.id_DistribuidoraAlmacenes
        WHERE
        lp_distribuidora.id = " . $a->id_Distribuidora . " AND lp_distribuidora_asignacion.status = 2";
        return DB::select($str_Sql);       
        
    }



    public function asig_RecepcionDistribuidora(Request $a){
        // $cant_aesperar = lp_distribuidora_asignacion::where('id','=', $a->id_DistribuidoraAsignacion)->value('cant_Asignada')->get();
        $exist_recepcion = lp_distribuidora_asignacion::where('id','=', $a->id_DistribuidoraAsignacion)->value('cant_Recepcionada');
        $exist_PorRecepcion = lp_distribuidora_asignacion::where('id','=', $a->id_DistribuidoraAsignacion)->value('cant_PorRecepcionar');
        $diferencia = $exist_PorRecepcion - $a->cant_Recepcionada;
        
        if ( $diferencia == 0){
            lp_distribuidora_asignacion::where('id','=', $a->id_DistribuidoraAsignacion)->update([
                'cant_Recepcionada'=> $a->cant_Recepcionada + $exist_recepcion,
                'cant_Existencia'=> $a->cant_Recepcionada + $exist_recepcion,
                'cant_PorRecepcionar'=> 0,
                'Status'=> 2
                              
            ]);
        }else{
            lp_distribuidora_asignacion::where('id','=', $a->id_DistribuidoraAsignacion)->update([
                'cant_PorRecepcionar'=> $a->cant_Asignada - $a->cant_Recepcionada,
                'cant_Recepcionada'=> $a->cant_Recepcionada + $exist_recepcion,                
                'cant_Existencia'=> $a->cant_Recepcionada + $exist_recepcion, 
                'Status'=>1               
            ]);
        }; 
        return 1;       
    }


    public function asig_MermaDistribuidora(Request $a){
        $cant_exist = lp_distribuidora_asignacion::where('id','=', $a->id_DistribuidoraAsignacion)->value('cant_Existencia');
        lp_distribuidora_asignacion::where('id','=', $a->id_DistribuidoraAsignacion)->update([
            'cant_DescMerma' => $a->cant_DescMerma,  
            'cant_Existencia'=> $cant_exist - $a->cant_DescMerma, 
           
        ]);

        return 1;
    }





    public function StrSqlNew($a, $b){
        $strAux = "";
        $strAux .= 'call '.$a.'(';
        for ($i=0; $i < count($b) ; $i++) {
            if($b[$i][1]){
                $strAux .= $b[$i][0].", ";
            }else{
                $strAux .= "'".$b[$i][0]."', ";
            }    
        }
        $strAux = rtrim($strAux);
        if(count($b) > 0){
            $strAux = substr($strAux, 0, -1);
        }
        $strAux .= ')';
        return $strAux;
    }
}
