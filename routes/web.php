<?php

/*
|--------------------------------------------------------------------------
| Application Route
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


$app->get('/','HomeController@home');
$app->get('/about','HomeController@about');


$app->group(['prefix' => 'api/v1'], function () use ($app) {


$app->get('/','WebController@atur_id');	
//login dan register
$app->post('/login','LdanRController@Masuk');
$app->post('/register','LdanRController@Daftar');
//kategori
$app->get('/get_kategori','KategoriController@get_kategori');
$app->post('/simpan_kategori','KategoriController@simpan_kategori');
$app->put('/edit_kategori/{id}','KategoriController@EditKategori');
$app->delete('/hapus_kategori/{id}','KategoriController@HapusKategori');
//lapak
$app->get('/get_lapak','LapakController@get_lapak');
$app->get('/detail_lapak/{id}','LapakController@detail_lapak');
$app->post('/simpan_lapak','LapakController@simpan_lapak');
$app->put('/edit_lapak/{id}','LapakController@EditLapak');
$app->delete('/hapus_lapak/{id}','LapakController@HapusLapak');

//jenis_kendaraan
$app->get('/get_jenis_kendaraan','KurirController@get_JenisKendaraan');
$app->get('/detail_jenis_kendaraan/{id}','KurirController@detail_JenisKendaraan');
$app->post('/simpan_jenis_kendaraan','KurirController@simpan_JenisKendaraan');
$app->put('/edit_jenis_kendaraan/{id}','KurirController@Edit_JenisKendaraan');
$app->delete('/hapus_jenis_kendaraan/{id}','KurirController@hapus_JenisKendaraan');
//kurir
$app->get('/get_kurir','KurirController@get_kurir');
$app->get('/detail_kurir/{id}','KurirController@detail_kurir');
$app->post('/simpan_kurir','KurirController@simpan_kurir');
$app->post('/edit_kurir/{id}','KurirController@Edit_Kurir');
$app->delete('/hapus_kurir/{id}','KurirController@hapus_kurir');


});





