@extends('Modals.M-Insert-1')

@section('content-M1')
    <div class="form-group">
        <label>¿ESTA SEGURO DE ELIMINAR LA PLANIFICACION?</label>
    </div>
@endsection

@section('footer-M1')    
    <button type="button" class="btn btn-default" data-dismiss="modal" id="btnDeleteNo">NO</button>
    <button type="button" class="btn btn-primary" id="btnDeleteYes">SI</button>    
@endsection