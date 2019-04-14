;(function(win){
    LoadFunctions.new_Silo = function(){
        Ajax("new_Silo", LoadVars, function(data){
            InitControl();
            LoadFunctions.list_Silos();
        }, true);
    }

    LoadFunctions.list_Silos = function(){
        LoadVars.array_IdResponsable = [];
        Ajax("list_Silos", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){
                LoadVars.array_IdResponsable[data[i]["id"]] = data[i]["idResponsable"];     
                strTd += '<tr>';
                strTd += CreateTd(data[i]["Nombre"], "left");
                strTd += CreateTd(data[i]["Direccion"], "left");
                strTd += CreateTd("0" + data[i]["Telefono"], "center");
                strTd += CreateTd(data[i]["NombreResponsable"], "left");
                strTd += CreateTd(data[i]["CedulaResponsable"], "center");
                strTd += CreateTd("0" + data[i]["TelefonoResponsable"], "center");
                strTd += CreateTd(data[i]["EmailResponsable"], "left");
                strTd += '<td style="text-align: center;">';
                strTd += '<button type="button" data-toggle="tooltip" title="EDITAR" class="btn btn-primary btn-flat" id="btn_EditarSilo"><i class="fa fa-pencil-square-o" id =' + data[i]["id"] + '></i></button>';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableSilosRecarga", strTd);
        });
    }

    LoadFunctions.list_SiloUpdate = function(){
        Ajax("list_SiloUpdate", LoadVars, function(data){
            $("#txt_NameSiloUp").val(data[0]["Nombre"]);
            $("#txt_DireccionSiloUp").val(data[0]["Direccion"]);
            $("#txt_TelefonoSiloUp").val("0" + data[0]["Telefono"]);
            $("#txt_EmailSiloUp").val( data[0]["Correo"]);
            $("#txt_NameSiloUp, #txt_NameSiloUp, #txt_DireccionSiloUp, #txt_TelefonoSiloUp, #txt_EmailSiloUp").change()
            LoadFunctions.list_SiloResponsable("cmb-responsableUp", LoadVars.id_Responsable);
            $('#M-Insert-1').modal('show');
        });
    }

    LoadFunctions.update_Silo = function(){
        Ajax("update_Silo", LoadVars, function(data){
            $('#M-Insert-1').modal('hide');
            LoadFunctions.list_Silos();
        }, true);
    }
})(window);