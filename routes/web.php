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
$app->get('/get_kategori/{id}','KategoriController@get_kategori');
$app->get('/get_kategori_layanan/{id}/{offset}','KategoriController@get_kategori_layanan');
$app->post('/simpan_kategori','KategoriController@simpan_kategori');
$app->post('/edit_kategori/{id}','KategoriController@EditKategori');
$app->delete('/hapus_kategori/{id}','KategoriController@HapusKategori');

//lapak
$app->get('/get_lapak/{id}','LapakController@get_lapak');
$app->get('/detail_lapak/{id}','LapakController@detail_lapak');
$app->post('/simpan_lapak','LapakController@simpan_lapak');
$app->post('/edit_lapak/{id}','LapakController@EditLapak');
$app->delete('/hapus_lapak/{id}','LapakController@HapusLapak');


//jenis_kendaraan
$app->get('/get_jenis_kendaraan/{id}','KurirController@get_JenisKendaraan');
$app->get('/detail_jenis_kendaraan/{id}','KurirController@detail_JenisKendaraan');
$app->post('/simpan_jenis_kendaraan','KurirController@simpan_JenisKendaraan');
$app->post('/edit_jenis_kendaraan/{id}','KurirController@Edit_JenisKendaraan');
$app->delete('/hapus_jenis_kendaraan/{id}','KurirController@hapus_JenisKendaraan');

//kurir
$app->get('/get_kurir/{id}','KurirController@get_kurir');
$app->get('/detail_kurir/{id}','KurirController@detail_kurir');
$app->post('/simpan_kurir','KurirController@simpan_kurir');
$app->post('/edit_kurir/{id}','KurirController@Edit_Kurir');
$app->delete('/hapus_kurir/{id}','KurirController@hapus_kurir');

//item
$app->get('/get_item/{offset}','ItemController@get_item');
$app->get('/get_item_lapak/{offset}/{id}','ItemController@get_item_lapak');
$app->get('/detail_item/{id}','ItemController@detail_item');
$app->post('/simpan_item','ItemController@simpan_item');
$app->post('/edit_item/{id}','ItemController@Edit_item');
$app->delete('/hapus_item/{id}','ItemController@hapus_item');

//item_gambar
$app->get('/get_gambar/{id}','ItemController@get_gambar');
$app->post('/simpan_gambar/{id}','ItemController@simpan_gambar');
$app->post('/edit_gambar/{id}','ItemController@edit_gambar');
$app->delete('/hapus_gambar/{id}','ItemController@hapus_gambar');

//belanja
$app->get('/get_belanja/{offset}','BelanjaController@get_belanja');
$app->get('/detail_belanja/{id}','BelanjaController@detail_belanja');
$app->post('/simpan_belanja','BelanjaController@simpan_belanja');
$app->post('/edit_belanja/{id}','BelanjaController@Edit_belanja');
$app->delete('/hapus_belanja/{id}','BelanjaController@hapus_belanja');

//rating item
$app->get('/get_rating/{tentang}/{offset}','RatingController@get_rating');
$app->get('/detail_rating/{tentang}/{id}','RatingController@detail_rating');
$app->post('/simpan_rating/{tentang}','RatingController@simpan_rating');
$app->post('/edit_rating/{tentang}/{id}','RatingController@Edit_rating');
$app->delete('/hapus_rating/{tentang}/{id}','RatingController@hapus_rating');

//pengguna 
$app->get('/get_pengguna/{offset}','PenggunaController@get_pengguna');
$app->get('/detail_pengguna/{id}','PenggunaController@detail_pengguna');
$app->get('/level_pengguna/{level}/{offset}','PenggunaController@level_pengguna');

});





