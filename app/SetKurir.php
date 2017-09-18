<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SetKurir extends Model
{
    protected $table = 'set_kurir';
    protected $fillable = [
	'id_kurir',
	'id_pengguna',
	'id_jenis_kendaraan',
	'no_polisi',
	'url_foto_kendaraan'
    ];
    
}
