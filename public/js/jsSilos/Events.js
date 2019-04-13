;(function(win){
    $("#cmb-silo").change(function(){
        LoadFunctions.list_SiloAlmacen("cmb-almacen", 1);
        LoadFunctions.list_SiloRegistroRecarga();
    });

    $("#btn-SiloIncorporacion").click(function(){
        var sw = ControlCheck([
            "#cmb-silo",
            "#cmb-almacen",
            "#cmb-producto",
            "#txt-cant_Recibida",
            "#txt-FechaRecepcion"
        ]);
        if(sw){return}
        LoadVars.Nota = $("#txt-Nota").val();
        LoadFunctions.inst_SiloRecarga();        
    })

    $("#tableSilosRecarga").on("click", "#btn_merma", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.cant_Existencia = $('#tableSilosRecarga tbody').find('tr').eq(fila).find('td').eq(4).text() * 1000;
        LoadVars.id_SiloAlmacenIncorporacion = $(this)[0].firstChild.id;
        $('#M-Insert').modal('show');
    });

    $("#tableSilosRecarga").on("click", "#btn_manufactura", function(){
        var fila = $(this).closest('tr').index();
        LoadVars.cant_Existencia = $('#tableSilosRecarga tbody').find('tr').eq(fila).find('td').eq(4).text() * 1000;
        LoadVars.id_SiloAlmacenIncorporacion = $(this)[0].firstChild.id;
        $('#M-Insert-1').modal('show');
        LoadFunctions.list_SiloAlmacen("cmb-SiloAlmacenes", 2);
    });

    N("#btnMermaAdd").click(function(){
        var sw = ControlCheck(["#txt_SiloMerma",]);
        if(sw){return}
        if(Number(LoadVars.cant_Merma) <= Number(LoadVars.cant_Existencia)){
            LoadVars.cant_Existencia = (Number(LoadVars.cant_Existencia) - Number(LoadVars.cant_Merma)) / 1000;
            LoadFunctions.update_SiloMerma()
        }else{
            Notify("LA MERMA NO DEBE SER MAYOR QUE LA CANTIDAD RECARGADA.", "danger");        
        }
    });

    N("#btnManufacturaAdd").click(function(){
        var sw = ControlCheck(["#cmb-SiloAlmacenes", "#txt-SiloManufactura"]);
        if(sw){return}
        if(Number(LoadVars.cant_Manufacturada) * 50 <= Number(LoadVars.cant_Existencia)){
            LoadVars.cant_Existencia = (Number(LoadVars.cant_Existencia) - (Number(LoadVars.cant_Manufacturada) * 50)) / 1000;
            LoadFunctions.update_SiloManufactura()
        }else{
            Notify("EL NUMERO DE SACOS SUPERA LA CANTIDAD ASIGNADA.", "danger");        
        }
    });
})(window);