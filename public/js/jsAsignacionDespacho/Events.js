;(function(win){

    $("#cmb-distribuidora").change(function(){
        LoadFunctions.list_DistribuidorasAlmacenes("cmb-almacen_distribuidora");
    });

    $("#cmb-almacen_distribuidora").change(function(){
        LoadFunctions.list_AsignaFecha();
    });

    $("#tableOrdenDistribucion").on("click", "#btn_PlanificarOrden", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.id_OrdenOperacionesAsignacion = $(this)[0].firstChild.id;
        var arr_Fecha = LoadVars.array_Fechas[LoadVars.id_OrdenOperacionesAsignacion].FechaInicio.split("/");
        var d = new Date(arr_Fecha[1] + "/" + arr_Fecha[0] + "/" + arr_Fecha[2]); 
        var arr_Fecha_ = LoadVars.array_Fechas[LoadVars.id_OrdenOperacionesAsignacion].FechaFin.split("/");
        var d_ = new Date(arr_Fecha_[1] + "/" + arr_Fecha_[0] + "/" + arr_Fecha_[2]);
		$('.Asing_dataPickter').datepicker({
			language: 'es', 
            startDate: d,
            endDate: d_
        }); 
        $('#M-Insert').modal('show');
    });

    $("#btnActiveYes").click(function(){
        var sw = ControlCheck([
            "#txt_OrdenFechaInicio"
        ]);
        if(sw){return}
        $(".Asing_dataPickter").val("");
        $('#M-Insert').modal('hide');
        LoadFunctions.asing_DespachoPanaderia();
    });

    $("#M-Insert").on("hidden.bs.modal", function(){
        $(".Asing_dataPickter").val("");
    });


})(window);
