;(function(win){

    $("#btn-NewSilo").click(function(){
        if(ControlCheck([
            "#txt_NameSilo",
            "#txt_DireccionSilo",
            "#txt_TelefonoSilo",
            "#txt_EmailSilo",
            "#cmb-responsable"
        ])){return}
        if(EmailCheck("#txt_EmailSilo")){return}
        if(PhoneCheck("#txt_TelefonoSilo")){return}
        LoadFunctions.new_Silo();

    })

    $("#btnActualizarSilo").click(function(){
        if(ControlCheck([
            "#txt_NameSiloUp",
            "#txt_DireccionSiloUp",
            "#txt_TelefonoSiloUp",
            "#txt_EmailSiloUp",
            "#cmb-responsableUp"
        ])){return}
        if(EmailCheck("#txt_EmailSiloUp")){return}
        if(PhoneCheck("#txt_TelefonoSiloUp")){return}
        LoadFunctions.update_Silo();
    })

    $("#tableSilosRecarga").on("click", "#btn_EditarSilo", function(){
        LoadVars.id_Silo = $(this)[0].firstChild.id;
        LoadVars.id_Responsable = LoadVars.array_IdResponsable[LoadVars.id_Silo];
        LoadFunctions.list_SiloUpdate();
    });

})(window);