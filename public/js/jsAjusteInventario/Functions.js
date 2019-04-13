;(function(win){

    LoadFunctions.list_AjusteInventario = function(){
        Ajax("list_AjusteInventario", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){
                switch (Number(data[i]["Status"])) {
                    case 0:
                        data[i]["Status"] = "EN TRANSITO";
                        break;
                    case 1:
                        data[i]["Status"] = "ENTREGA PARCIAL";
                        break;
                    case 2:
                        data[i]["Status"] = "ENTREGA TOTAL";
                        break;
                }             
                strTd += '<tr>';
                strTd += CreateTd(data[i]["FechaAsignacion"], "center");
                strTd += CreateTd(data[i]["NombreAlmacen"], "center");
                strTd += CreateTd(data[i]["cant_Recepcionada"], "center");
                strTd += CreateTd(data[i]["cant_Existencia"], "center");
                strTd += CreateTd(data[i]["cant_DescMerma"], "center");
                strTd += CreateTd(data[i]["Status"], "center");
                strTd += '<td style="text-align: center;">';
                if(data[i]["cant_DescMerma"] == 0){
                    strTd += '<button type="button" data-toggle="tooltip" title="ASIGNAR MERMA" class="btn btn-danger btn-flat" id="btn_AjusteInventario"><i class="fa fa-minus-circle" id =' + data[i]["id_DistribuidoraAsignacion"] + '></i></button>';
                }
                strTd += '</td>';
                strTd += '</tr>';            
            }
            DefineDataTable("tableOrdenDistribucion", strTd);
        });
    }

    LoadFunctions.asig_MermaDistribuidora = function(){
        Ajax("asig_MermaDistribuidora", LoadVars, function(data){
            LoadFunctions.list_AjusteInventario();
            $("#txt-cant_Merma").val("")
            $('#M-Insert').modal('hide');
        }, true);
    }
})(window);