@extends('Modals.M-Insert-2')
@section('content-M2')

<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading" id="HeadingId">DISTRIBUIDORAS</div>
            <div class="modal-body">
                <form action="" id="FormOrdenDetalle">                    
                    <div class="form-group">
                        <label>SELECCIONE UNA DISTRIBUIDORA</label>
                        <select id='cmb-distribuidora' name="id_Distribuidora" class="form-control"></select>
                    </div>                    
                </form>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12 col-md-offset-0">
        <div class="panel panel-default">
            <div class="panel-heading">PANADERIAS A PLANIFICAR</div>
            <div class="panel-body">
                <div id="panaderiaCantidad"><p></p></div>
                <table id="tableOrdenDistribucionDetalle" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ACTIVAR</th>
                            <th>PANADERIA</th>
                            <th>ASIGNACION (Sacos)</th>
                            <th>ULTIMO DESPACHO</th>                            
                            <th>ESTATUS</th>  
                            <th>CANTIDAD</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>ACTIVAR</th>
                            <th>PANADERIA</th>
                            <th>ASIGNACION (Sacos)</th>
                            <th>ULTIMO DESPACHO</th>                            
                            <th>ESTATUS</th>  
                            <th>CANTIDAD</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footer-M2')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
@endsection