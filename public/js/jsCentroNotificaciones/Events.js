;(function(win){

    $("#cmb-distribuidora").change(function(){
        LoadFunctions.list_DistribuidorasAlmacenes("cmb-almacen_distribuidora");
    });

    $("#cmb-almacen_distribuidora").change(function(){
        LoadFunctions.list_Notificacion();
    });

    $("#tableOrdenDistribucion").on("click", "#btn_Notificado", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.id_OrdenOperacionesAsignacion = $(this)[0].firstChild.id;
        LoadFunctions.noti_CelDespachoPanaderia();
    });

})(window);
