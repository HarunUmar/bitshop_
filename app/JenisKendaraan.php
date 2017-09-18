<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JenisKendaraan extends Model
{
    protected $table = 'jenis_kendaraan';
    protected $fillable = [
	'id_jenis_kendaraan',
	'jenis_kendaraan',
	'beban_minimal',
	'beban_maksimal',
	'status_aktif'
    ];
    
}
