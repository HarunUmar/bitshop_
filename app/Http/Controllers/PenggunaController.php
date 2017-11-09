<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Validator;
use Illuminate\Support\Facades\Hash;
use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Hashing\BcryptHasher;
use App\Lib\AturId;
use App\Lib\KompresFoto;
use Illuminate\Support\Facades\Input;


class PenggunaController extends BaseController
{
     public function index(){
		
	}	
		
	public function get_pengguna($offset) {
		
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			$db = DB::table('pengguna');
			$count = $db->count();
			$hasil = $db->select('id_pengguna','nama','alamat','no_hp','level','url_foto','email')
						->orderBy('id_pengguna','desc');
			
			if($count<10)
			{
				if($count==0){$result = "tidak ada data";}
				else{	
					$result = $hasil->offset($offset)->limit($count)->get();
					}
			}
			else {
				$result = $hasil->offset($offset)->limit(10)->get();	
			}
			return response()->json([['success' => 1,'pesan' =>$result]]);	
			
						
				
	
	}
	
	public function detail_pengguna($id) {
		
			$hasil = DB::table('pengguna')
						->select('id_pengguna','nama','alamat','no_hp','level','url_foto','email')
						->where('id_pengguna','=',$id)
						->get();
			return response()->json([['success' => 1,'pesan' =>$hasil]]);		
	
	}
	
	
	public function level_pengguna($level,$offset){
		
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			$db = DB::table('pengguna');
			$count = $db->count();
			$hasil = $db->select('id_pengguna','nama','alamat','no_hp','level','url_foto','email')
						->where('level','=',$level)
						->orderBy('id_pengguna','desc');
			
			if($count<10)
			{
				if($count==0){$result = "tidak ada data";}
				else{	
					$result = $hasil->offset($offset)->limit($count)->get();
					}
			}
			else {
				$result = $hasil->offset($offset)->limit(10)->get();	
			}
			return response()->json([['success' => 1,'pesan' =>$result]]);	
			
	}

}
