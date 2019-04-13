;(function(win){

    $("#cmb-distribuidora").change(function(){
        LoadFunctions.list_RecepcionDistribuidora();
    });

    $("#tableOrdenDistribucion").on("click", "#btn_RecepcionMercancia", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.cant_Asignada = $('#tableOrdenDistribucion tbody').find('tr').eq(fila).find('td').eq(2).text();
        LoadVars.id_DistribuidoraAsignacion = $(this)[0].firstChild.id;     
        $('#M-Insert').modal('show');
    });

    $("#btn-CantRecepcionada").click(function(){
        var sw = ControlCheck([
            "#txt-cant_Recepcionada"
        ]);
        if(sw){return}
        if(Number($("#txt-cant_Recepcionada").val()) <= Number(LoadVars.cant_Asignada)){
            LoadFunctions.asig_RecepcionDistribuidora();
        }else{
            Notify("LA CANTIDAD RECEPCIONADA NO PUEDE SER MAYOR QUE LA CANTIDAD ASIGNADA", "danger");
        }
    
    });
})(window);