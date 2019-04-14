@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">RESPONSABLE DEL SILO</div>
            <div class="modal-body">
                <div class="form-group">                        
                    <label>NOMBRE Y APELLIDO:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt_NameResponsable" name="NameResponsable" class="form-control input-sm" type="text">
                    </div>                
                </div>
                <div class="form-group">                        
                    <label>CEDULA:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt_CedulaResponsable" name="CedulaResponsable" class="form-control input-sm OnlyNum" type="text">
                    </div>                
                </div> 
                <div class="form-group">                        
                    <label>TELEFONO:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt_TelefonoResponsable" name="TelefonoResponsable" class="form-control input-sm PhoneCelular" type="text" >
                    </div>                
                </div>              
                <div class="form-group">
                    <label>CORREO:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                        <input id="txt_EmailResponsable" name="EmailResponsable"  type="email" class="form-control input-sm Email">
                        <div class="input-group-addon btn_Email"><i class="fa fa-at btnAt"></i></div>
                    </div>
                </div>
     
            </div>
            <div class="modal-footer">
                <button id="btn-NewResponsable" type="button" class="btn btn-primary" >CREAR RESPONSABLE</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE RESPONSABLES</div>
            <div class="panel-body">
                <table id="tableSilosRecarga" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>NOMBRE</th>
                            <th>CEDULA</th>                            
                            <th>TELEFONO</th>
                            <th>CORREO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>NOMBRE</th>
                            <th>CEDULA</th>                            
                            <th>TELEFONO</th>
                            <th>CORREO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('SiloResponsable.Editar')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsSiloResponsable&cssModule=') }}"></script>
@endsection