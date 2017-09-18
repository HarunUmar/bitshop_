<?php

namespace App;

use Illuminate\Auth\Authenticatable;
use Laravel\Lumen\Auth\Authorizable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\Access\Authorizable as AuthorizableContract;

class User extends Model implements AuthenticatableContract, AuthorizableContract
{
	
    protected $table = 'pengguna';
    use Authenticatable, Authorizable;
    protected $fillable = [
        'id_pengguna', 'nama', 'password','alamat', 'no_hp', 'level', 'url_foto','email','status_aktif',
    ];
    protected $hidden = [
        'password',
    ];
}
