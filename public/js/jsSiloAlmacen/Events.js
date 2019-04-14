;(function(win){

    $("#cmb-silo").change(function(){
        LoadFunctions.list_Almacenes();
    })


    $("#btn-NewAlmacen").click(function(){
        if(ControlCheck([
            "#cmb-silo",
            "#cmb-TipoAlmacen",
            "#txt_NameSilo"
        ])){return}
        LoadFunctions.new_Almacen();
    })

    $("#btnActualizarDistribuidora").click(function(){
        if(ControlCheck([
            "#txt_NameSiloUp",
            "#txt_DireccionSiloUp",
            "#txt_TelefonoSiloUp",
            "#txt_EmailSiloUp"
        ])){return}
        if(EmailCheck("#txt_EmailSiloUp")){return}
        if(PhoneCheck("#txt_TelefonoSiloUp")){return}
        LoadFunctions.update_Distribuidora();
    })

    $("#tableSilosRecarga").on("click", "#btn_EditarDistribuidora", function(){
        LoadVars.id_Distribuidora = $(this)[0].firstChild.id;
        LoadFunctions.list_DistribuidoraUpdate();
    });

})(window);