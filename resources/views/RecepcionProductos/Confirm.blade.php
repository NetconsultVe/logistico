@extends('Modals.M-Insert')

@section('content_M-Insert')
    <div class="form-group">
        <label>CANTIDAD RECEPCIONADA:</label>
        <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id="txt-cant_Recepcionada" name="cant_Recepcionada" class="form-control input-sm OnlyNum" type="text" placeholder="INGRESE LAS CANTIDADES EN SACOS">
        </div>
    </div>
@endsection

@section('footer_M-Insert')    
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
    <button type="button" class="btn btn-primary" id="btn-CantRecepcionada">RECEPCIONAR</button>
@endsection