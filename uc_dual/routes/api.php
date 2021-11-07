<?php

use App\Http\Controllers\NotaController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('nota', 'App\Http\Controllers\NotaController');
Route::resource('destinatario', 'App\Http\Controllers\DestinatarioController');
Route::resource('distribuidor', 'App\Http\Controllers\DistribuidorController');
Route::resource('transportadora', 'App\Http\Controllers\TransportadoraController');



// Route::get('/',function(){
//     return ["chegou aqui sim"];
// });