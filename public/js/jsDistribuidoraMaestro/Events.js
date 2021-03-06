;(function(win){

    $("#btn-NewSilo").click(function(){
        if(ControlCheck([
            "#txt_NameSilo",
            "#txt_DireccionSilo",
            "#txt_TelefonoSilo",
            "#txt_EmailSilo"
        ])){return}
        if(EmailCheck("#txt_EmailSilo")){return}
        if(PhoneCheck("#txt_TelefonoSilo")){return}
        LoadFunctions.new_Distribuidora();
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