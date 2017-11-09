<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\SetLapak;
use Validator;
use Illuminate\Support\Facades\Hash;
use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Hashing\BcryptHasher;
use App\Lib\AturId;
use App\Lib\KompresFoto;
use Illuminate\Support\Facades\Input;


class LapakController extends BaseController
{
     public function index(){
		
	}	
	public function get_lapak($offset){
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			$limit = 10;
			$db = DB::table('set_lapak');
			$count = $db->count();
			$hasil = $db->join('pengguna', 'set_lapak.id_pengguna', '=', 'pengguna.id_pengguna')
				->select('id_lapak',
											 'set_lapak.id_pengguna',
											 'pengguna.nama',
											 'set_lapak.nama_lapak',
											 'set_lapak.jam_buka',
											 'set_lapak.jam_tutup')
						->where('set_lapak.status_lapak','=','1')
						->orderBy('set_lapak.id_lapak','desc');
			
			if($count<$limit)
			{
				if($count==0){$result = "tidak ada data";}
				else{	
					$result = $hasil->offset($offset)->limit($count)->get();
					}
			}
			else {
				$result = $hasil->offset($offset)->limit($limit)->get();	
			}
			return response()->json([['success' => 1,'pesan' =>$result]]);	
						
	}
	
	public function detail_lapak($id){
			$db = DB::table('set_lapak')
									->where('id_lapak',$id)
									->where('status_lapak','1')
									->first();
		return response()->json([[
							'success' => 1,
							'pesan'   => $db]]);
	}
	

	
	
	
	public function simpan_lapak(Request $request) {
		$messsages = array(
		'id_pengguna.required'=>'Pengguna harus disertakan',
		'nama_lapak.required'=>'nama lapak harus di isi',
		'deskripsi_lapak.required'=>'deskripsi lapak harus diisi',
		'lng_lapak.required'=>'koordinate lapak (lang) harus diisi',
		'lti_lapak.required'=>'koordinate lapak (lat) harus diisi',
		'alamat_detail_lapak.required'=>'Alamat Lapak harus Diisi',
		'jam_buka.required'=>'sertakan jam buka lapak',
		'jam_tutup.required'=>'sertakan jam tutup lapak',		
		'status_lapak.required'=>'Tentukan Status lapak');
		
		$input = $request->all();
		$rules = array('id_pengguna' => 'Required',
						'nama_lapak' => 'Required',
						'deskripsi_lapak' => 'Required',
						'lng_lapak' => 'Required',
						'lti_lapak' => 'Required',
						'alamat_detail_lapak' => 'Required',
						'jam_buka' => 'Required',
						'jam_tutup' => 'Required',
						'status_lapak' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json([['success'=>0,  'pesan'=>$validator->messages()->all()]]);}
		else {
		
		$newkode = AturId::AmbilId('id_lapak','set_lapak','lapak','6','12');	
		$input['id_lapak'] = $newkode;
		$hasil = DB::table('set_lapak')->insert($input);	
		if($hasil){
			return response()->json([['success' => 1,'pesan' =>'Lapak Berhasil ditambahkan']]);		
		}
		else{
			return response()->json([['success' => 1,'pesan' =>'Lapak gagal ditambahkan']]);	
		}
				
	}
	}
	
	public function EditLapak(Request $request, $id){
			$db = DB::table('set_lapak')
							->where('id_lapak',$id)
							->update($request->all());	
			if($db)
			{	
				return response()->json([['success'=>1,  'pesan'=>'Data Berhasi diubah']]);
			}
			else{
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menggubah data']]);
			}
	}
	public function HapusLapak($id){
			$db = DB::table('set_lapak');
			$query = $db->where('id_lapak',$id)->delete();	
			if($query){				
				return response()->json([['success'=>1,  'pesan'=>'Data Berhasi dihapus']]);
			}
			else {
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menghapus data']]);
			}			
	}
	
}
