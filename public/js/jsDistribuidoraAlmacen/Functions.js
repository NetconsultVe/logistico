;(function(win){
    LoadFunctions.new_DistAlmacen = function(){
        Ajax("new_DistAlmacen", LoadVars, function(data){
            InitControl();
            LoadFunctions.list_Distribuidoras("cmb-distribuidora");	
            $("#tableSilosRecarga").dataTable().fnDestroy();
            $("#tableSilosRecarga tbody").empty();
        }, true);
    }

    LoadFunctions.list_DistribuidoraAlmacenes = function(){
        Ajax("list_DistribuidoraAlmacenes", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){ 
                strTd += '<tr>';
                strTd += CreateTd(data[i]["cod_Almacen"], "left");
                strTd += CreateTd(data[i]["NombreAlmacen"], "left");
                strTd += '<td style="text-align: center;">';
                strTd += '<button type="button" data-toggle="tooltip" title="EDITAR" class="btn btn-primary btn-flat" id="btn_EditarDistribuidora"><i class="fa fa-pencil-square-o" id =' + data[i]["id"] + '></i></button>';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableSilosRecarga", strTd);
        });
    }

    LoadFunctions.update_DistAlmacen = function(){
        Ajax("update_DistAlmacen", LoadVars, function(data){
            LoadFunctions.list_DistribuidoraAlmacenes();
            $('#M-Insert-1').modal('hide');            
        }, true);
    }
})(window);