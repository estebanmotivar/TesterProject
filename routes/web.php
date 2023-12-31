<?php

use Illuminate\Support\Facades\Route;
<<<<<<< HEAD
use App\Http\Controllers\AprendizController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ProfesorController;
use App\Http\Controllers\Auth\RegisterController;

Route::get('/menu', function () {
    return view('menu.menu');
})->name('menu');

Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('/register', [RegisterController::class, 'register']);

Route::get('/', [AuthController::class, 'showLoginForm'])->name('menu');
Route::post('/login', [AuthController::class, 'login']);
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');



// Rutas para los roles específicos
Route::get('/admin', [AdminController::class, 'index'])
    ->middleware('auth.admin')
    ->name('admin.index');

// Ruta para listar todos los aprendices (sin restricción de rol)
Route::get('/aprendices', [AprendizController::class, 'index'])->name('aprendices.index');
Route::get('/aprendices/create', [AprendizController::class, 'create'])->name('aprendices.create');
Route::post('/aprendices', [AprendizController::class, 'store'])->name('aprendices.store');
Route::get('/aprendices/{aprendiz}/edit', [AprendizController::class, 'edit'])->name('aprendices.edit');
Route::put('/aprendices/{aprendiz}', [AprendizController::class, 'update'])->name('aprendices.update');
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
=======

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('menu/menu');
});
//index
Route::get('Profesores/index','App\Http\Controllers\ProfesorController@index')->name('profesores.index');
//perfil
Route::get('Profesores/crearperfil','App\Http\Controllers\ProfesorController@perfilcreate')->name('profesores.createperfil');
Route::post('Profesores/agregarperfil','App\Http\Controllers\ProfesorController@perfilstore')->name('profesores.storeperfil');


Route::get('Profesores/perfil','App\Http\Controllers\ProfesorController@perfill')->name('profesores.perfill');
Route::get('Profesores/editperfil/{id}','App\Http\Controllers\ProfesorController@perfiledit')->name('profesores.editarperfil');
Route::post('Profesores/actualizar/{id}','App\Http\Controllers\ProfesorController@perfilupdate')->name('profesores.perfilupdate');
//crear y almacenar clase
Route::get('Profesores/crear','App\Http\Controllers\ProfesorController@create')->name('profesores.create');
Route::post('Profesores/agregar','App\Http\Controllers\ProfesorController@store')->name('profesores.store');
//editar y eliminar clase
Route::get('Profesores/editclase/{id}','App\Http\Controllers\ProfesorController@editclass')->name('profesores.editarclases');
Route::get('Profesores/actualizarclase/{id}','App\Http\Controllers\ProfesorController@updateclass')->name('profesores.updateclass');
//solicitudes
Route::get('Profesores/solicitudes','App\Http\Controllers\ProfesorController@solicitud')->name('profesores.solicitudes');
//rechazar solicitud
Route::get('Profesores/rechazar/{id}','App\Http\Controllers\ProfesorController@destroysoli')->name('profesores.rechazo');
//aceptar solicitud
Route::post('Profesores/aceptar/{id1}/{id2}/{id3}/{id4}/{id5}/{id6}', 'App\Http\Controllers\ProfesorController@agendconfirmstore')->name('profesores.confirmstore');




//mostrar agendas
Route::get('Profesores/mostraragendas/{id}','App\Http\Controllers\ProfesorController@showagends')->name('profesores.showagen');
//mostrar perfiles
Route::get('Profesores/verperfilagendado/{id}','App\Http\Controllers\ProfesorController@showperfapren')->name('profesores.perfaprendagend');

//Crear comentario
Route::get('Profesores/crearcomentario','App\Http\Controllers\ProfesorController@comentcreate')->name('profesores.createcomentario');
Route::post('Profesores/agregarcomentario','App\Http\Controllers\ProfesorController@comentstore')->name('profesores.comentarstore');




//administradores
//index
Route::get('Administradores/index','App\Http\Controllers\AdminController@indexcoment')->name('admins.index');
//crear y almacenar instrumentos
Route::get('instrumentos/crear','App\Http\Controllers\AdminController@instrucreate')->name('instru.create');
Route::post('instrumentos/agregar','App\Http\Controllers\AdminController@intrustore')->name('instru.store');
>>>>>>> luis
