;(function(win){

    $("#cmb-silo").change(function(){
        LoadFunctions.list_SiloAlmacenes();
    })


    $("#btn-NewAlmacen").click(function(){
        if(ControlCheck([
            "#cmb-silo",
            "#cmb-TipoAlmacen",
            "#txt_NameSilo"
        ])){return}
        LoadFunctions.new_SiloAlmacen();
    })

    $("#btnActualizarAlmacen").click(function(){
        if(ControlCheck([
            "#cmb-TipoAlmacenUp",
            "#txt_NameSiloUp"
        ])){return}
        LoadFunctions.update_SiloAlmacen();
    })

    $("#tableSilosRecarga").on("click", "#btn_EditarDistribuidora", function(){
        LoadVars.id_Almacen = $(this)[0].firstChild.id;
        LoadVars.id_TipoAlmacen = LoadVars.array_list_Almacenes[LoadVars.id_Almacen];
        LoadFunctions.list_SiloAlmacenUpdate();
    });

})(window);