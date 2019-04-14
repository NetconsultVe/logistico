@extends('Modals.M-Insert-1')

@section('content-M1')
<div class="form-group">                        
        <label>NOMBRE Y APELLIDO:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id="txt_NameResponsableUp" name="NameResponsableUp" class="form-control input-sm" type="text">
        </div>                
    </div>
    <div class="form-group">                        
        <label>CEDULA:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id="txt_CedulaResponsableUp" name="CedulaResponsableUp" class="form-control input-sm OnlyNum" type="text">
        </div>                
    </div> 
    <div class="form-group">                        
        <label>TELEFONO:</label>
        <div class="input-group">                                
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id="txt_TelefonoResponsableUp" name="TelefonoResponsableUp" class="form-control input-sm PhoneCelular" type="text" >
        </div>                
    </div>              
    <div class="form-group">
        <label>CORREO:</label>
        <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
            <input id="txt_EmailResponsableUp" name="EmailResponsableUp"  type="email" class="form-control input-sm Email">
            <div class="input-group-addon btn_Email"><i class="fa fa-at btnAt"></i></div>
        </div>
    </div>               
@endsection

@section('footer-M1')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
    <button type="button" class="btn btn-primary" id="btnActualizarResponsable">ACTUALIZAR</button>
@endsection