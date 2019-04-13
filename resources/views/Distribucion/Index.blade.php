@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">DISTRIBUCION</div>
            <div class="modal-body">
                <div class="form-group">
                    <label>SELECCIONE UN SILO:</label>
                    <select id='cmb-silo' name="id_Silo" class="form-control"></select>
                </div>
                <div class="form-group">
                    <label>SELECCIONE EL ALMACEN DEL SILO:</label>
                    <select id='cmb-almacen' name="id_Almacen" class="form-control"></select>
                </div>
                <div class="form-group">
                    <label>CANTIDAD DISPONIBLE (SACOS):</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt-cant_Disponible" name="cant_Disponible" class="form-control input-sm OnlyNum" type="text" placeholder="SACOS DISPONIBLES" readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label>SELECCIONE UNA DISTRIBUIDORA:</label>
                    <select id='cmb-distribuidora' name="id_Distribuidora" class="form-control"></select>
                </div>
                <div class="form-group">
                    <label>SELECCIONE EL ALMACEN DE LA DISTRIBUIDORA:</label>
                    <select id='cmb-almacen_distribuidora' name="id_AlmacenDistribuidora" class="form-control"></select>
                </div>
                <div class="form-group">
                    <label>CANTIDAD A DISTRIBUIR (SACOS):</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt-cant_Asignada" name="cant_Asignada" class="form-control input-sm OnlyNum" type="text" placeholder="INGRESE LAS CANTIDADES EN SACOS">
                    </div>
                </div>
                <div class="form-group">
                    <label>PRECIO DISTRIBUIDORA:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt-PrecioDistribuidora" name="PrecioDistribuidora" class="form-control input-sm OnlyNum" type="text" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                    <label>PRECIO PANADERIA:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt-PrecioPanaderia" name="PrecioPanaderia" class="form-control input-sm OnlyNum" type="text" placeholder="">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btn-AsignarDistribucion">ASIGNAR</button>
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
                            <th>DISTRIBUIDORA</th>
                            <th>ALMACEN</th>
                            <th>CANTIDAD ASIGNADA</th>
                            <th>CANTIDAD RECEPCIONADA</th>
                            <th>ESTATUS</th>       
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>FECHA</th>
                            <th>DISTRIBUIDORA</th>
                            <th>ALMACEN</th>
                            <th>CANTIDAD ASIGNADA</th>
                            <th>CANTIDAD RECEPCIONADA</th>
                            <th>ESTATUS</th>       
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

{{-- @include('Distribucion.Confirm')
@include('Distribucion.Detalle')
@include('Distribucion.Delete') --}}

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsDistribucion&cssModule=') }}"></script>
@endsection