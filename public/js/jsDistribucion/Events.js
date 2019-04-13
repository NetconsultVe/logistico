;(function(win){
    $("#cmb-silo").change(function(){
        LoadFunctions.list_SiloAlmacen("cmb-almacen", 2);
    });

    $("#cmb-almacen").change(function(){
        LoadFunctions.list_Distribuciones();
        LoadFunctions.disp_SiloAlmacen();
    });

    $("#cmb-distribuidora").change(function(){
        LoadFunctions.list_DistribuidorasAlmacenes("cmb-almacen_distribuidora");
    });

    $("#btn-AsignarDistribucion").click(function(){
        var sw = ControlCheck([
            "#cmb-silo",
            "#cmb-almacen",
            "#txt-cant_Disponible",
            "#cmb-distribuidora",
            "#cmb-almacen_distribuidora",
            "#txt-cant_Asignada",
            "#txt-PrecioDistribuidora",
            "#txt-PrecioPanaderia"
        ]);
        if(sw){return}
        if(Number($("#txt-cant_Disponible").val()) >= Number($("#txt-cant_Asignada").val())){
            LoadFunctions.asig_SiloDistribuidora();
        }else{
            Notify("LA CANTIDAD ASIGNADA NO DEBE SER MAYOR QUE LA DISPONIBLE", "danger");
        }
    })

})(window);