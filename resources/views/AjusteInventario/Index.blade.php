@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">DISTRIBUCION</div>
            <div class="modal-body">
                <div class="form-group">
                <div class="form-group">
                    <label>SELECCIONE UNA DISTRIBUIDORA:</label>
                    <select id='cmb-distribuidora' name="id_Distribuidora" class="form-control"></select>
                </div>
            </div>
            <div class="modal-footer">
                
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-10 col-md-offset-1">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE LAS DISTRIBUCIONES</div>
            <div class="panel-body">
                <table id="tableOrdenDistribucion" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>FECHA</th>
                            <th>ALMACEN</th>
                            <th>CANTIDAD RECEPCIONADA</th>
                            <th>CANTIDAD EXISTENCIA</th>
                            <th>MERMA</th>
                            <th>ESTATUS</th>
                            <th>ACCION</th>       
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>FECHA</th>
                            <th>ALMACEN</th>
                            <th>CANTIDAD RECEPCIONADA</th>
                            <th>CANTIDAD EXISTENCIA</th>
                            <th>MERMA</th>
                            <th>ESTATUS</th>
                            <th>ACCION</th>       
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
@include('AjusteInventario.Confirm')
@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsAjusteInventario&cssModule=') }}"></script>
@endsection