;(function(win){

    $("#cmb-distribuidora").change(function(){
        LoadFunctions.list_AjusteInventario();
    });

    $("#tableOrdenDistribucion").on("click", "#btn_AjusteInventario", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.cant_Recepcionada = $('#tableOrdenDistribucion tbody').find('tr').eq(fila).find('td').eq(3).text();
        LoadVars.id_DistribuidoraAsignacion = $(this)[0].firstChild.id;     
        $('#M-Insert').modal('show');
    });

    $("#btn-CantMerma").click(function(){
        var sw = ControlCheck([
            "#txt-cant_Merma"
        ]);
        if(sw){return}
        if(Number($("#txt-cant_Merma").val()) <= Number(LoadVars.cant_Recepcionada)){
            LoadFunctions.asig_MermaDistribuidora();
        }else{
            Notify("LA MERMA NO PUEDE SER MAYOR QUE LA CANTIDAD RECEPCIONADA", "danger");
        }
    
    });
})(window);