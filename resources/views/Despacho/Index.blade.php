@extends('layouts.desktop')
@section('content')
<div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading"></div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>SELECCIONE UNA DISTRIBUIDORA:</label>
                        <select id='cmb-distribuidora' name="id_Distribuidora" class="form-control"></select>
                    </div>
                    <div class="form-group">
                        <label>SELECCIONE EL ALMACEN DE LA DISTRIBUIDORA:</label>
                        <select id='cmb-almacen_distribuidora' name="id_AlmacenDistribuidora" class="form-control"></select>
                    </div>
                </div>

            </div>
        </div>
    </div>
<div class="row">
    <div class="col-md-12 col-md-offset-0">
        <div class="panel panel-default">
            <div class="panel-heading">ORDEN DE OPERACION ACTIVA NRO: </div>
            <div class="panel-body">
                <table id="tableOrdenDistribucion" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>NOMBRE</th>
                            <th>CONTACTO</th>
                            <th>TELEFONO</th>
                            <th>CANTIDAD ASIGNADA</th>
                            <th>MONTO A CANCELAR</th>
                            <th>FECHA DEL DESPACHO</th>
                            <th>NOTIFICADO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>NOMBRE</th>
                            <th>CONTACTO</th>
                            <th>TELEFONO</th>
                            <th>CANTIDAD ASIGNADA</th>
                            <th>MONTO A CANCELAR</th>
                            <th>FECHA DEL DESPACHO</th>
                            <th>NOTIFICADO</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('Despacho.Confirm')
@include('Despacho.Detalle')
@include('Despacho.Delete')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsDespacho&cssModule=') }}"></script>
@endsection