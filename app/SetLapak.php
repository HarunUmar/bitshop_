<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    protected $table = 'set_lapak';
    protected $fillable = [
	'id_lapak',
	'url_pengguna',
	'nama_lapak',
	'deskripsi_lapak',
	'lng_lapak',
	'lti_lapak',
	'alamat_detail_lapak',
	'jam_buka',
	'jam_tutup'
	'status_lapak'
    ];
    
}
