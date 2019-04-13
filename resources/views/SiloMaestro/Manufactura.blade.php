@extends('Modals.M-Insert-1')

@section('content-M1')
    <div class="form-group">
        <label>SELECCIONE UN ALMACEN</label>
        <select id='cmb-SiloAlmacenes' name="id_SiloAlmacenes" class="form-control"></select>
    </div>
    <div class="form-group">
        <label>SACOS DE HARINA (50 Kg):</label>
        <div class="input-group">
            <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
            <input id=txt-SiloManufactura name="cant_Manufacturada" class="form-control input-sm OnlyNum" type="text" placeholder="INGRESE EL NUMERO DE SACOS MANUCFACTURADOS">
        </div>
    </div>
@endsection

@section('footer-M1')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
    <button type="button" class="btn btn-primary" id="btnManufacturaAdd">PROCESAR</button>
@endsection