;(function(win){
    win.Sw = false;
    win.LoadFunctions = {};
    win.LoadVars = {};
    win.lenguaje_espanol = {
        "decimal": "",
        "emptyTable": "No hay datos disponibles en la tabla",
        "info": "Showing _START_ to _END_ of _TOTAL_ entries",
        "infoEmpty": "Mostrando 0 a 0 de 0 entradas",
        "infoFiltered": "(Filtrado de _MAX_ entradas totales)",
        "infoPostFix": "",
        "thousands": ",",
        "lengthMenu": "Mostrar _MENU_ entradas",
        "loadingRecords": "Cargando...",
        "processing": "Procesando...",
        "search": "Buscar:",
        "zeroRecords": "No se encontraron registros coincidentes",
        "paginate": {
            "first": "Primero",
            "last": "Último",
            "next": "Siguiente",
            "previous": "Anterior"
        },
        "aria": {
            "sortAscending": ": Activar para ordenar la columna ascendente",
            "sortDescending": ": activate to sort column descending"
        }
    };

    var d = new Date();

    $('.datepicker').datepicker({language: 'es', startDate: d});

    $('.datepicker, .Asing_dataPickter').on('changeDate', function(ev){
        $(this).datepicker('hide');
    });

    $('[data-toggle="tooltip"]').tooltip();

    $("select").html('<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>');

    $("input, textarea, select").change(function(){
        $(this).css("border-color","#d2d6de");
        window.LoadVars[this["name"]] = this.value;
        if($(this).hasClass('OnlyNum')){
            var a = this["value"].replace(",", ".");
            window.LoadVars[this["name"]] = Number(a).toFixed(2);
        }
        if($(this).hasClass('PhoneCelular')){
            var a = this["value"].replace("(", "");
            var a = a.replace(")", "");
            var a = a.replace("-", "");
            var a = a.replace("___", "");
            var a = a.replace("_______", "");
            var a = a.replace(" ", "");
            window.LoadVars[this["name"]] = a;
        }
    });

    $(".PhoneCelular").inputmask({"mask": "(9999) 999-9999"});
    $(".PhoneCelular").prop("placeholder", "(____) ___-____");

    N(".OnlyNum").OnlyNum();

    $(".btn_Email").click(function() {
        var elem = this.previousElementSibling;
        if ($(elem).val().indexOf("@") == -1) {
            if ($(elem).val() == "") {
                $(elem).val("correo@dominio.com");
            } else {
                $(elem).val($(elem).val() + "@");
            }
            $(elem).change();
        }
    });

    LoadFunctions.list_Silo = function(a){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(a);
        Ajax("list_Silo", LoadVars, function(b){
            for (var i = 0; i < b.length; i++) {
                str_opcion += '<option value ="' + b[i]["id"] + '">' + b[i]["Nombre"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion); 
        })
    };

    LoadFunctions.list_SiloAlmacen = function(a, b){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(a);
        LoadVars.id_AlmacenesTipo = b;
        Ajax("list_SiloAlmacen", LoadVars, function(c){            
            for (var i = 0; i < c.length; i++) {
                str_opcion += '<option value ="' + c[i]["id"] + '">' + c[i]["NombreAlmacen"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion); 
        })
    };

    LoadFunctions.list_Productos = function(a, b){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(a);
        LoadVars.id_ProductosTipo = b;
        Ajax("list_Productos", LoadVars, function(c){            
            for (var i = 0; i < c.length; i++) {
                str_opcion += '<option value ="' + c[i]["id_productos_presentacion"] + '">' + c[i]["Nombre"] + " - " + c[i]["Presentacion"] + " DE " + c[i]["PesoKg"] + " Kg." +"</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion); 
        })
    };

    LoadFunctions.list_Distribuidoras = function(a, b){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(a);
        LoadVars.id_ProductosTipo = b;
        Ajax("list_Distribuidoras", LoadVars, function(c){            
            for (var i = 0; i < c.length; i++) {
                str_opcion += '<option value ="' + c[i]["id"] + '">' + c[i]["NombreDistribuidora"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion); 
        })
    };

    LoadFunctions.list_DistribuidorasAlmacenes = function(a){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(a);
        Ajax("list_DistribuidorasAlmacenes", LoadVars, function(c){            
            for (var i = 0; i < c.length; i++) {
                str_opcion += '<option value ="' + c[i]["id"] + '">' + c[i]["NombreAlmacen"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion); 
        })
    };

    LoadFunctions.list_OrdenOperacionesResponsable = function(a){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(a);
        Ajax("list_OrdenOperacionesResponsable", LoadVars, function(c){            
            for (var i = 0; i < c.length; i++) {
                str_opcion += '<option value ="' + c[i]["id"] + '">' + c[i]["Nombre"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion); 
        })
    };

    LoadFunctions.list_SiloResponsable = function(a, b){
        if(b == undefined || b == null){
            var str_opcion = '<option value="" disabled selected >SELECCIONE UNA OPCIÓN</option>';
        }else{
            var str_opcion = '<option value="" disabled >SELECCIONE UNA OPCIÓN</option>';
        }
        var elem = document.getElementById(a);
        Ajax("list_SiloResponsable", LoadVars, function(c){            
            for (var i = 0; i < c.length; i++) {
                if(b == c[i]["id"]){
                    str_opcion += '<option value ="' + c[i]["id"] + '" selected >' + c[i]["Nombre"] + "</option>";
                    LoadVars[elem["name"]] = c[i]["id"];
                }else{
                    str_opcion += '<option value ="' + c[i]["id"] + '">' + c[i]["Nombre"] + "</option>";
                }
            }
            $(elem).empty();
            $(elem).html(str_opcion); 
        })
    };

    win.getToken = function(){
        var resp = "";
        Object.values(document.getElementsByTagName("meta")).forEach(function(a){
            if(a.name == "csrf_token"){
                resp = a.content;
            }
        });
        return resp;
    };

    win.Ajax = function(route, data, funct, c){
        if(c){Notify("PROCESANDO INFORMACION ESPERE POR FAVOR...", "info");}        
        $.ajax({
            url: route,
            headers: {
                'X-CSRF-TOKEN': getToken()
            },
            type: 'post',
            dataType: 'json',
            data: data,
            success: function(resp) {
                if(c){Notify("LA INFORMACION FUE AGREGADA CON EXITO.", "info");}
                funct(resp);
            }
        });       
    };

    win.ControlCheck = function(a){
        var swControl = false;
        var strAux = "";
        a.forEach(function(b){
            strAux += b + ", "
        });
        $.each($(strAux.trim().slice(0, -1)), function(i, b){
            if($(b).val() == "" || $(b).val() == null){
                $(b).css("border-color","red");
                swControl = true;
                Notify("ESTE CAMPO ES REQUERIDO", "danger");
                console.log(b);
                return false;
            }
        });
        return swControl;
    };

    win.EmailCheck = function(a){
        var swControl = false;
		var regex = /[\w-\.]{2,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;
		if(regex.test($(a).val()) == false){
            Notify("EL FORMATO DEL CORREO NO ES EL CORRECTO.", "danger");
            $(a).css("border-color","red");
			swControl = true;
        }
        return swControl; 
    };

    win.PhoneCheck = function(a){
        var swControl = false;
        var b = LoadVars[$(a)[0]["name"]];
		if(b.length < 11 || b[0] !== "0"){
            Notify("EL FORMATO DEL TELEFONO NO ES EL CORRECTO.", "danger");
            $(a).css("border-color","red");
			swControl = true;
        }
        return swControl; 
    };

    win.DefineDataTable = function(a, b){
        var elem = document.querySelector("#" + a);
        var elemTbody = document.querySelector("#" + a + " tbody");
        $(elem).dataTable().fnDestroy();
        $(elemTbody).html(b);
        $(elem).DataTable({
            "destroy": true,
            "language": lenguaje_espanol
        });
    }

    win.RemoveEvent = function(a){
        var b = document.querySelectorAll(a);
        var fn = function(){};
        b.forEach(function(b){
            // console.log(b.removeEventListener("keypress", fn));
            console.log(b.eventListenerList)
        });

    }

    win.CreateTd = function(a, b){
        return isNull(a) ? '<td></td>' : '<td style="text-align:' + b + ';">' + a + '</td>';
    };

    win.isNull = function(check){
        return check == null ? true : false        
    }

    win.Notify = function(a, b, c){
        var time = c == undefined ? 300 : c;
        window.NotifyEvents = $.notify({message: a},{placement: {align: "center"}, z_index: 100000, delay: time, animate: {enter: 'animated fadeInDown', exit: 'animated fadeOutUp'}, type: b });
    };

    win.InitControl = function(){
        $("input, textarea").val("");
        $("select").empty();  
        $("select").html('<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>');  
    }
})(window);