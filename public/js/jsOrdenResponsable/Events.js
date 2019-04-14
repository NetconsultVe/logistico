;(function(win){

    $("#txt_CedulaResponsableUp").change(function(){
        LoadVars.CedulaResponsableUp = parseInt(LoadVars.CedulaResponsableUp, 10);
    });

    $("#btn-NewResponsable").click(function(){
        if(ControlCheck([
            "#txt_NameResponsable",
            "#txt_CedulaResponsable",
            "#txt_TelefonoResponsable",
            "#txt_EmailResponsable"
        ])){return}
        if(EmailCheck("#txt_EmailResponsable")){return}
        if(PhoneCheck("#txt_TelefonoResponsable")){return}
        LoadFunctions.new_SiloResponsable();
    })

    $("#btnActualizarResponsable").click(function(){
        if(ControlCheck([
            "#txt_NameResponsableUp",
            "#txt_CedulaResponsableUp",
            "#txt_TelefonoResponsableUp",
            "#txt_EmailResponsableUp"
        ])){return}
        if(EmailCheck("#txt_EmailResponsableUp")){return}
        if(PhoneCheck("#txt_TelefonoResponsableUp")){return}
        LoadFunctions.update_SiloResponsable();
    })

    $("#tableSilosRecarga").on("click", "#btn_EditarSilo", function(){
        LoadVars.id_Responsable = $(this)[0].firstChild.id;
        var fila = $(this).closest('tr').index();
        var a = $('#tableSilosRecarga tbody').find('tr').eq(fila).find('td').eq(0).text();
        var b = $('#tableSilosRecarga tbody').find('tr').eq(fila).find('td').eq(1).text();
        var c = $('#tableSilosRecarga tbody').find('tr').eq(fila).find('td').eq(2).text();
        var d = $('#tableSilosRecarga tbody').find('tr').eq(fila).find('td').eq(3).text();
        $("#txt_NameResponsableUp").val(a);
        $("#txt_CedulaResponsableUp").val(b);
        $("#txt_TelefonoResponsableUp").val(c);
        $("#txt_EmailResponsableUp").val(d);
        $("#txt_NameResponsableUp, #txt_CedulaResponsableUp, #txt_TelefonoResponsableUp, #txt_EmailResponsableUp").change();
        $('#M-Insert-1').modal('show');
    });

})(window);