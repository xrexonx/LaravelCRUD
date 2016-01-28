<?php

use App\Models\Property;

Route::get('/', function () {
    return view('index');
});

//Auth
Route::get('auth/login', 'Auth\AuthController@getLogin');
Route::post('auth/login', 'Auth\AuthController@postLogin');
Route::get('auth/logout', 'Auth\AuthController@getLogout');

//Register
Route::get('auth/register', 'Auth\AuthController@getRegister');
Route::post('auth/register', 'Auth\AuthController@postRegister');

//Proerty
Route::get('property/create', 'PropertyController@create');
Route::post('property/createProperty', 'PropertyController@createProperty');
Route::get('property/view/{id}', 'PropertyController@view');
Route::get('property/edit/{id}', 'PropertyController@edit');
Route::post('property/update/{id}', 'PropertyController@update');
Route::post('property/delete/{id}', 'PropertyController@delete');


Route::get('dashboard', function () {
    return view('dashboard')
            ->with('name', Auth::user()->name)
            ->with('properties', Property::all());
});

Route::get('home', function () {
    return view('dashboard')
            ->with('name', Auth::user()->name)
            ->with('properties', Property::all());
});
