@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">DISTRIBUIDORA</div>
            <div class="modal-body">
                <div class="form-group">                        
                    <label>NOMBRE:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt_NameSilo" name="NameSilo" class="form-control input-sm" type="text">
                    </div>                
                </div>
                <div class="form-group">                        
                    <label>DIRECCION:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt_DireccionSilo" name="DireccionSilo" class="form-control input-sm" type="text">
                    </div>                
                </div> 
                <div class="form-group">                        
                    <label>TELEFONO:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt_TelefonoSilo" name="TelefonoSilo" class="form-control input-sm PhoneCelular" type="text" >
                    </div>                
                </div>              
                <div class="form-group">
                    <label>CORREO:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                        <input id="txt_EmailSilo" name="EmailSilo"  type="email" class="form-control input-sm Email">
                        <div class="input-group-addon btn_Email"><i class="fa fa-at btnAt"></i></div>
                    </div>
                </div>
              
            </div>
            <div class="modal-footer">
                <button id="btn-NewSilo" type="button" class="btn btn-primary" >CREAR DISTRIBUIDORA</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE LAS DISTRIBUIDORAS</div>
            <div class="panel-body">
                <table id="tableSilosRecarga" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>NOMBRE</th>
                            <th>DIRECCION</th>                            
                            <th>TELEFONO</th>
                            <th>CORREO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>NOMBRE</th>
                            <th>DIRECCION</th>                            
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

@include('DistribuidoraMaestro.Editar')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&cssModule=&jsModule=jsDistribuidoraMaestro') }}"></script>
@endsection