@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">ALMACEN</div>
            <div class="modal-body">
                <div class="form-group">
                    <label>SELECCIONE UN SILO:</label>
                    <select id='cmb-silo' name="id_Silo" class="form-control"></select>
                </div>
                <div class="form-group">
                    <label>SELECCIONE EL TIPO DE ALMACEN:</label>
                    <select id='cmb-TipoAlmacen' name="id_TipoAlmacen" class="form-control"></select>
                </div>
                <div class="form-group">                        
                    <label>NOMBRE DEL ALMACEN:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt_NameAlmacen" name="NameAlmacen" class="form-control input-sm" type="text">
                    </div>                
                </div>              
            </div>
            <div class="modal-footer">
                <button id="btn-NewAlmacen" type="button" class="btn btn-primary" >CREAR ALMACEN</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE ALMACENES</div>
            <div class="panel-body">
                <table id="tableSilosRecarga" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>CODIGO</th>
                            <th>NOMBRE</th>                            
                            <th>TIPO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>CODIGO</th>
                            <th>NOMBRE</th>                            
                            <th>TIPO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('SiloAlmacen.Editar')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&cssModule=&jsModule=jsSiloAlmacen') }}"></script>
@endsection