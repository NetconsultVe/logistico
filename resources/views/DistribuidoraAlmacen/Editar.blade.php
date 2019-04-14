@extends('Modals.M-Insert-1')

@section('content-M1')   
<div class="form-group">
    <div class="form-group">                        
        <label>NOMBRE DEL ALMACEN:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id="txt_NameAlmacenUp" name="NameAlmacenUp" class="form-control input-sm" type="text">
        </div>                
    </div>                  
@endsection

@section('footer-M1')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
    <button type="button" class="btn btn-primary" id="btnActualizarAlmacen">ACTUALIZAR</button>
@endsection