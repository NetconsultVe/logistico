;(function(win){
    LoadFunctions.new_Almacen = function(){
        Ajax("new_Almacen", LoadVars, function(data){
            InitControl();
            LoadFunctions.list_Silo("cmb-silo");
            LoadFunctions.list_AlmacenTipo("cmb-TipoAlmacen");
            $("#tableSilosRecarga").dataTable().fnDestroy();
            $("#tableSilosRecarga tbody").empty();
        }, true);
    }

    LoadFunctions.list_Almacenes = function(){
        Ajax("list_Almacenes", LoadVars, function(data){
            LoadVars.array_list_Almacenes = [];
            var strTd = "";
            for(var i = 0; i < data.length; i++){ 
                LoadVars.array_list_Almacenes[data[i]["id"]] = {id_TipoAlmacen: data[i]["id_TipoAlmacen"]}
                strTd += '<tr>';
                strTd += CreateTd(data[i]["cod_Almacen"], "left");
                strTd += CreateTd(data[i]["NombreAlmacen"], "left");
                strTd += CreateTd(data[i]["TipoAlmacen"], "center");
                strTd += '<td style="text-align: center;">';
                strTd += '<button type="button" data-toggle="tooltip" title="EDITAR" class="btn btn-primary btn-flat" id="btn_EditarDistribuidora"><i class="fa fa-pencil-square-o" id =' + data[i]["id"] + '></i></button>';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableSilosRecarga", strTd);
        });
    }

    LoadFunctions.list_DistribuidoraUpdate = function(){
        Ajax("list_DistribuidoraUpdate", LoadVars, function(data){
            $("#txt_NameSiloUp").val(data[0]["Nombre"]);
            $("#txt_DireccionSiloUp").val(data[0]["Direccion"]);
            $("#txt_TelefonoSiloUp").val("0" + data[0]["Telefono"]);
            $("#txt_EmailSiloUp").val( data[0]["Correo"]);
            $("#txt_NameSiloUp, #txt_NameSiloUp, #txt_DireccionSiloUp, #txt_TelefonoSiloUp, #txt_EmailSiloUp").change()
            $('#M-Insert-1').modal('show');
        });
    }

    LoadFunctions.update_Distribuidora = function(){
        Ajax("update_Distribuidora", LoadVars, function(data){
            $('#M-Insert-1').modal('hide');
            LoadFunctions.list_MaestroDistribuidoras();
        }, true);
    }
})(window);