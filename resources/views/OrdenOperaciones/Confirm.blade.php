@extends('Modals.M-Insert')

@section('content_M-Insert')
    <div class="form-group">
        <label>SELECCIONE UNA DISTRIBUIDORA:</label>
        <select id='cmb-distribuidora1' name="id_Distribuidora" class="form-control"></select>
    </div>
    <div class="form-group">
        <label>SELECCIONE EL ALMACEN DE LA DISTRIBUIDORA:</label>
        <select id='cmb-almacen_distribuidora' name="id_AlmacenDistribuidora" class="form-control"></select>
    </div>
    <div class="form-group">                        
        <label>CANTIDAD PLANIFICADA DE LA ORDEN DE OPERACION:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input class="form-control input-sm" name="cant_OP" type="text" placeholder="" id=txt-cant_OP readonly>
        </div>
    </div>
    <div class="form-group">                        
        <label>CANTIDAD DISPONIBLE EN EL ALMACEN:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input class="form-control input-sm" name="cant_MaxOP" type="text" placeholder="" id=txt-cant_MaxOP readonly>
        </div>
    </div>
@endsection

@section('footer_M-Insert')    
    <button type="button" class="btn btn-default" data-dismiss="modal">NO</button>
    <button type="button" class="btn btn-primary" id="btnActiveYes">PROCESAR ORDEN DE OPERACIONES</button>    
@endsection