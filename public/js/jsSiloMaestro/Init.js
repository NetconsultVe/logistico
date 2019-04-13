N(".preload").nodeRemove(function(){
	N(".wrapper").show(function(){
		LoadFunctions.list_OrdenOperacionesResponsable("cmb-responsable");
	}, 200)
}, 200);