<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{

    protected $table = 'kategori';
	
    protected $fillable = [
	'nama_kategori',
	'url_icon',
	'status_aktif'
    ];
    
}
