;(function(win){
    LoadFunctions.new_SiloAlmacen = function(){
        Ajax("new_SiloAlmacen", LoadVars, function(data){
            InitControl();
            LoadFunctions.list_Silo("cmb-silo");
            LoadFunctions.list_SiloAlmacenTipo("cmb-TipoAlmacen");
            $("#tableSilosRecarga").dataTable().fnDestroy();
            $("#tableSilosRecarga tbody").empty();
        }, true);
    }

    LoadFunctions.list_SiloAlmacenes = function(){
        Ajax("list_SiloAlmacenes", LoadVars, function(data){
            LoadVars.array_list_Almacenes = [];
            var strTd = "";
            for(var i = 0; i < data.length; i++){ 
                LoadVars.array_list_Almacenes[data[i]["id"]] = data[i]["id_TipoAlmacen"];
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

    LoadFunctions.list_SiloAlmacenUpdate = function(){
        Ajax("list_SiloAlmacenUpdate", LoadVars, function(data){
            $("#txt_NameAlmacenUp").val(data[0]["NombreAlmacen"]);
            $("#txt_NameAlmacenUp").change();
            LoadFunctions.list_SiloAlmacenTipo("cmb-TipoAlmacenUp", LoadVars.id_TipoAlmacen);
            $('#M-Insert-1').modal('show');
        });
    }

    LoadFunctions.update_SiloAlmacen = function(){
        Ajax("update_SiloAlmacen", LoadVars, function(data){
            LoadFunctions.list_SiloAlmacenes();
            $('#M-Insert-1').modal('hide');            
        }, true);
    }
})(window);