N(".preload").nodeRemove(function(){
	N(".wrapper").show(function(){
		LoadFunctions.list_Silo("cmb-silo");
		LoadFunctions.list_AlmacenTipo("cmb-TipoAlmacen");
		
	}, 200)
}, 200);