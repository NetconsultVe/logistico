@extends('Modals.M-Insert')

@section('content_M-Insert')
<div class="form-group">                        
        <label>FECHA DE ASIGNACION:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
            <input class="form-control input-sm Asing_dataPickter ctrUpdate" name="FechaAsignacion" type="text" placeholder="" id=txt_OrdenFechaInicio readonly>
        </div>
    </div>
@endsection

@section('footer_M-Insert')    
    <button type="button" class="btn btn-default" data-dismiss="modal">CERRAR</button>
    <button type="button" class="btn btn-primary" id="btnActiveYes">ASIGNAR FECHA</button>    
@endsection