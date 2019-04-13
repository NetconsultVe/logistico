@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">RECARGA DE SILOS</div>
            <div class="modal-body">
                <div class="form-group">
                    <label>SELECCIONE UN SILO</label>
                    <select id='cmb-silo' name="id_Silo" class="form-control"></select>
                </div>
                <div class="form-group">
                    <label>SELECCIONE UN ALMACEN</label>
                    <select id='cmb-almacen' name="id_Almacen" class="form-control"></select>
                </div>
                <div class="form-group">
                    <label>SELECCIONE UN PRODUCTO</label>
                    <select id='cmb-producto' name="id_Producto" class="form-control"></select>
                </div>
                <div class="form-group">
                    <label>CANTIDAD:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input id="txt-cant_Recibida" name="cant_Recibida" class="form-control input-sm OnlyNum" type="text" placeholder="INGRESE LAS CANTIDADES EN TONELADAS">
                    </div>
                </div>
                <div class="form-group">                        
                    <label>FECHA DE LA RECARGA:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                        <input id="txt-FechaRecepcion" name="FechaRecepcion" class="form-control input-sm datepicker" type="text" placeholder="" readonly>
                        
                    </div>
                </div>
                <div class="form-group">
                    <label>OBSERVACION</label>
                    <textarea id='txt-Nota' name="Nota" class="form-control noresize" rows="3" placeholder=""></textarea>
                </div>                
            </div>
            <div class="modal-footer">
                <button id="btn-SiloIncorporacion" type="button" class="btn btn-primary" >RECARGAR EL SILO</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE RECARGAS</div>
            <div class="panel-body">
                <table id="tableSilosRecarga" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>FECHA</th>
                            <th>OPERACION</th>                            
                            <th>MERMA (Kg)</th>
                            <th>PRODUCTO</th>
                            <th>EXISTENCIA (Ton)</th>
                            <th>MANUFACTURA (Sacos)</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>FECHA</th>
                            <th>OPERACION</th>                            
                            <th>MERMA (Kg)</th>
                            <th>PRODUCTO</th>
                            <th>EXISTENCIA (Ton)</th>
                            <th>MANUFACTURA (Sacos)</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('silos.Manufactura')
@include('silos.Merma')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsSilos&cssModule=') }}"></script>
@endsection