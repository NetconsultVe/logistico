;(function(win){
    LoadFunctions.new_Distribuidora = function(){
        Ajax("new_Distribuidora", LoadVars, function(data){
            InitControl();
            LoadFunctions.list_MaestroDistribuidoras();
        }, true);
    }

    LoadFunctions.list_MaestroDistribuidoras = function(){
        Ajax("list_MaestroDistribuidoras", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){  
                strTd += '<tr>';
                strTd += CreateTd(data[i]["Nombre"], "left");
                strTd += CreateTd(data[i]["Direccion"], "left");
                strTd += CreateTd("0" + data[i]["Telefono"], "center");
                strTd += CreateTd(data[i]["Correo"], "left");
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