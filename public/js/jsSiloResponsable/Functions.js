;(function(win){
    LoadFunctions.new_SiloResponsable = function(){
        Ajax("new_SiloResponsable", LoadVars, function(data){
            InitControl();
            LoadFunctions.list_SiloResponsables();
        }, true);
    }

    LoadFunctions.list_SiloResponsables = function(){
        LoadVars.array_IdResponsable = [];
        Ajax("list_SiloResponsables", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){
                LoadVars.array_IdResponsable[data[i]["id"]] = data[i]["idResponsable"];     
                strTd += '<tr>';
                strTd += CreateTd(data[i]["Nombre"], "left");
                strTd += CreateTd(data[i]["Cedula"], "left");
                strTd += CreateTd("0" + data[i]["TelefonoPpal"], "center");
                strTd += CreateTd(data[i]["Email"], "left");
                strTd += '<td style="text-align: center;">';
                strTd += '<button type="button" data-toggle="tooltip" title="EDITAR" class="btn btn-primary btn-flat" id="btn_EditarSilo"><i class="fa fa-pencil-square-o" id =' + data[i]["id"] + '></i></button>';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableSilosRecarga", strTd);
        });
    }

    LoadFunctions.update_SiloResponsable = function(){
        Ajax("update_SiloResponsable", LoadVars, function(data){
            $('#M-Insert-1').modal('hide');
            LoadFunctions.list_SiloResponsables();
        }, true);
    }
})(window);