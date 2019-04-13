@extends('Modals.M-Insert-3')

@section('content-M4')
    <div class="form-group">
        <label>¿ESTA SEGURO DE ACTIVAR LA ORDEN DE OPERACION?</label>
    </div>
@endsection

@section('footer-M4')    
    <button type="button" class="btn btn-default" data-dismiss="modal" id="btnDeleteNo">NO</button>
    <button type="button" class="btn btn-primary" id="btnActivarYes">SI</button>    
@endsection