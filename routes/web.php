<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('clear-cache');
});
Route::get('/login', function(){    
    return view('auth.login');
});
Route::get('/clear-cache', function(){
    $exitCode = Cache::flush();
    return redirect('login');   
});
Route::get('/SilosRecarga', function(){    
    return view('silos.index');
});

Route::get('/Distribucion', function(){    
    return view('Distribucion.Index');
});

Route::get('/RecepcionProductos', function(){    
    return view('RecepcionProductos.Index');
});

Route::get('/AjusteInventario', function(){    
    return view('AjusteInventario.index');
});

Route::get('/OrdenOperaciones', function(){    
    return view('OrdenOperaciones.Index');
});

Route::get('/CentroNotificaciones', function(){    
    return view('CentroNotificaciones.Index');
});

Route::get('/AsignacionDespacho', function(){    
    return view('AsignacionDespacho.Index');
});

Route::get('/Despacho', function(){    
    return view('Despacho.Index');
});

Route::get('/ReversoAsignacion', function(){    
    return view('ReversoAsignacion.Index');
});

Route::get('/SiloMaestro', function(){    
    return view('SiloMaestro.Index');
});

Route::get('/DistribuidoraMaestro', function(){    
    return view('DistribuidoraMaestro.Index');
});

Route::get('/SiloAlmacen', function(){    
    return view('SiloAlmacen.Index');
});

Route::get('/DistribuidoraAlmacen', function(){    
    return view('DistribuidoraAlmacen.Index');
});

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');


route::post('list_Silo', 'SiloController@list_Silo');
route::post('list_SiloAlmacen', 'SiloController@list_SiloAlmacen');
route::post('list_Productos', 'SiloController@list_Productos');
route::post('list_SiloRegistroRecarga', 'SiloController@list_SiloRegistroRecarga');
route::post('update_SiloMerma', 'SiloController@update_SiloMerma');
route::post('update_SiloManufactura', 'SiloController@update_SiloManufactura');
route::post('inst_SiloRecarga', 'SiloController@inst_SiloRecarga');
route::post('new_Silo', 'SiloController@new_Silo');
route::post('list_Silos', 'SiloController@list_Silos');
route::post('list_SiloResponsable', 'SiloController@list_SiloResponsable');
route::post('list_SiloUpdate', 'SiloController@list_SiloUpdate');
route::post('update_Silo', 'SiloController@update_Silo');






route::post('list_Distribuidoras', 'DistribuidorasController@list_Distribuidoras');
route::post('list_Distribuciones', 'DistribuidorasController@list_Distribuciones');
route::post('list_DistribuidorasAlmacenes', 'DistribuidorasController@list_DistribuidorasAlmacenes');
route::post('disp_SiloAlmacen', 'DistribuidorasController@disp_SiloAlmacen');
route::post('asig_SiloDistribuidora', 'DistribuidorasController@asig_SiloDistribuidora');
route::post('asig_DistribuidoraDetalle', 'DistribuidorasController@asig_DistribuidoraDetalle');
route::post('list_RecepcionDistribuidora', 'DistribuidorasController@list_RecepcionDistribuidora');
route::post('asig_RecepcionDistribuidora', 'DistribuidorasController@asig_RecepcionDistribuidora');
route::post('list_AjusteInventario', 'DistribuidorasController@list_AjusteInventario');
route::post('asig_MermaDistribuidora', 'DistribuidorasController@asig_MermaDistribuidora');
route::post('list_MaestroDistribuidoras', 'DistribuidorasController@list_MaestroDistribuidoras');
route::post('list_DistribuidoraUpdate', 'DistribuidorasController@list_DistribuidoraUpdate');
route::post('update_Distribuidora', 'DistribuidorasController@update_Distribuidora');
route::post('new_Distribuidora', 'DistribuidorasController@new_Distribuidora');










route::post('list_OrdenOperacionesResponsable', 'OrdenOperacionesController@list_OrdenOperacionesResponsable');
route::post('asig_OrdenOperaciones', 'OrdenOperacionesController@asig_OrdenOperaciones');
route::post('list_OrdenOperaciones', 'OrdenOperacionesController@list_OrdenOperaciones');
route::post('list_Panaderias', 'OrdenOperacionesController@list_Panaderias');
route::post('asig_PreOrdenOperaciones', 'OrdenOperacionesController@asig_PreOrdenOperaciones');
route::post('asig_CancelOrdenOperaciones', 'OrdenOperacionesController@asig_CancelOrdenOperaciones');
route::post('asing_ProcesarOrdenOperaciones', 'OrdenOperacionesController@asing_ProcesarOrdenOperaciones');
route::post('asing_ActivarOrdenOperaciones', 'OrdenOperacionesController@asing_ActivarOrdenOperaciones');
route::post('asing_CerrarOrdenOperaciones', 'OrdenOperacionesController@asing_CerrarOrdenOperaciones');
route::post('cant_OP', 'OrdenOperacionesController@cant_OP');
route::post('cant_maxOP', 'OrdenOperacionesController@cant_maxOP');
route::post('list_AsignaFecha', 'OrdenOperacionesController@list_AsignaFecha');
route::post('asing_DespachoPanaderia', 'OrdenOperacionesController@asing_DespachoPanaderia');
route::post('list_Notificacion', 'OrdenOperacionesController@list_Notificacion');
route::post('noti_CelDespachoPanaderia', 'OrdenOperacionesController@noti_CelDespachoPanaderia');
route::post('entrega_PanaderiaDespacho', 'OrdenOperacionesController@entrega_PanaderiaDespacho');




route::post('list_SiloAlmacenTipo', 'AlmacenesController@list_SiloAlmacenTipo');
route::post('list_SiloAlmacenes', 'AlmacenesController@list_SiloAlmacenes');
route::post('new_SiloAlmacen', 'AlmacenesController@new_SiloAlmacen');
route::post('list_SiloAlmacenUpdate', 'AlmacenesController@list_SiloAlmacenUpdate');
route::post('update_SiloAlmacen', 'AlmacenesController@update_SiloAlmacen');
route::post('list_DistribuidoraAlmacenes', 'AlmacenesController@list_DistribuidoraAlmacenes');
route::post('update_DistAlmacen', 'AlmacenesController@update_DistAlmacen');
route::post('new_DistAlmacen', 'AlmacenesController@new_DistAlmacen');




