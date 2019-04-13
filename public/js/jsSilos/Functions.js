;(function(win){

    LoadFunctions.list_SiloRegistroRecarga = function(){
        Ajax("list_SiloRegistroRecarga", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){                
                strTd += '<tr>';
                strTd += CreateTd(data[i]["FechaRecepcion"], "center");
                strTd += CreateTd(data[i]["cod_Incorporacion"], "center");
                strTd += CreateTd(data[i]["cant_Merma"], "center");
                strTd += CreateTd(data[i]["Producto"], "center");
                strTd += CreateTd(data[i]["cant_Existencia"], "center");
                strTd += CreateTd(data[i]["cant_Manufacturada"], "center");
                strTd += '<td style="text-align: center;">';
                if(isNull(data[i]["cant_Manufacturada"])|| data[i]["cant_Manufacturada"] == "0.00"|| Number(data[i]["cant_Existencia"]) * 1000 > 50){
                    strTd += '<button type="button" data-toggle="tooltip" title="MANUFACTURAR" class="btn btn-primary btn-flat" id="btn_manufactura"><i class="fa fa-industry" id =' + data[i]["id_SiloAlmacenIncorporacion"] + '></i></button>';
                }
                if(isNull(data[i]["cant_Merma"]) || data[i]["cant_Merma"] == "0.00"){
                    strTd += '<button type="button" data-toggle="tooltip" title="ASIGNAR MERMA" class="btn btn-danger btn-flat" id="btn_merma"><i class="fa fa-minus-circle" id =' + data[i]["id_SiloAlmacenIncorporacion"] + '></i></button>';
                }
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableSilosRecarga", strTd);
        })
    }

    LoadFunctions.update_SiloMerma = function(){
        Ajax("update_SiloMerma", LoadVars, function(data){
            LoadFunctions.list_SiloRegistroRecarga(LoadVars);
            $('#M-Insert').modal('hide');
        }, true);
    }

    LoadFunctions.update_SiloManufactura = function(){
        Ajax("update_SiloManufactura", LoadVars, function(data){
            LoadFunctions.list_SiloRegistroRecarga(LoadVars);
            $("#txt-SiloManufactura").val("");
            $('#M-Insert-1').modal('hide');
        }, true);
    }

    LoadFunctions.inst_SiloRecarga = function(){
        Ajax("inst_SiloRecarga", LoadVars, function(data){
            InitControl();
            $("#tableSilosRecarga tbody").empty();
            LoadFunctions.list_Silo("cmb-silo");		
            LoadFunctions.list_Productos("cmb-producto", 1);
        }, true);
    }


})(window);