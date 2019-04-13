@extends('Modals.M-Insert-4')

@section('content-M5')
    <div class="form-group">
        <label>¿ESTA SEGURO DE CERRAR LA ORDEN DE OPERACION?</label>
    </div>
@endsection

@section('footer-M5')    
    <button type="button" class="btn btn-default" data-dismiss="modal" id="btnDeleteNo">NO</button>
    <button type="button" class="btn btn-primary" id="btnCerrarYes">SI</button>    
@endsection