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

        console.log("despues del check");

    })

})(window);