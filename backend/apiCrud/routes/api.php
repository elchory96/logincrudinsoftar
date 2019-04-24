<?php

use Illuminate\Http\Request;

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

Route::post('/registro','UserController@register');
Route::post('/login','UserController@login');

Route::middleware('auth:api')->post('/users', 'UserController@users');
Route::middleware('auth:api')->post('/postUser', 'UserController@postUser');
Route::middleware('auth:api')->post('/deleteUser', 'UserController@deleteUser');
