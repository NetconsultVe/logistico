@extends('Modals.M-Insert-1')

@section('content-M1')
    <div class="form-group">                        
        <label>NOMBRE:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id="txt_NameSiloUp" name="NameSiloUp" class="form-control input-sm" type="text">
        </div>                
    </div>
    <div class="form-group">                        
        <label>DIRECCION:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id="txt_DireccionSiloUp" name="DireccionSiloUp" class="form-control input-sm" type="text">
        </div>                
    </div> 
    <div class="form-group">                        
        <label>TELEFONO:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id="txt_TelefonoSiloUp" name="TelefonoSiloUp" class="form-control input-sm PhoneCelular" type="text" >
        </div>                
    </div>              
    <div class="form-group">
        <label>CORREO:</label>
        <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
            <input id="txt_EmailSiloUp" name="EmailSiloUp"  type="email" class="form-control input-sm Email">
            <div class="input-group-addon btn_Email"><i class="fa fa-at btnAt"></i></div>
        </div>
    </div>
    <div class="form-group">
        <div><label>RESPONSABLE DEL SILO</label><select id='cmb-responsableUp' name="id_ResponsableUp" class="form-control"></select></div>
    </div>                
@endsection

@section('footer-M1')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
    <button type="button" class="btn btn-primary" id="btnActualizarSilo">ACTUALIZAR</button>
@endsection