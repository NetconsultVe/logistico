;(function(win){

    $("#cmb-distribuidora").change(function(){
        LoadFunctions.list_DistribuidoraAlmacenes();
    })


    $("#btn-NewAlmacen").click(function(){
        if(ControlCheck([
            "#cmb-distribuidora",
            "#txt_NameAlmacen"
        ])){return}
        LoadFunctions.new_DistAlmacen();
    })

    $("#btnActualizarAlmacen").click(function(){
        if(ControlCheck([
            "#txt_NameAlmacenUp"
        ])){return}
        LoadFunctions.update_DistAlmacen();
    })

    $("#tableSilosRecarga").on("click", "#btn_EditarDistribuidora", function(){
        LoadVars.id_Almacen = $(this)[0].firstChild.id;
        var fila = $(this).closest('tr').index();
        var InputSelect = $('#tableSilosRecarga tbody').find('tr').eq(fila).find('td').eq(1).text();
        $("#txt_NameAlmacenUp").val(InputSelect);
        $("#txt_NameAlmacenUp").change();
        $('#M-Insert-1').modal('show');
    });

})(window);