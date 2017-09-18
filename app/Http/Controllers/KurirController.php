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

class KurirController extends BaseController
{
     public function index(){
		
	}	
	public function get_JenisKendaraan(){
		$db = DB::table('jenis_kendaraan')->select('id_jenis_kendaraan',
											 'jenis_kendaraan')
									->where('status_aktif','1')
									->get();
		return response()->json([
							'success' => 1,
							'pesan'   => $db]);
	}
	
	public function detail_JenisKendaraan($id){
			$db = DB::table('jenis_kendaraan')
									->where('id_jenis_kendaraan',$id)
									->where('status_aktif','1')
									->first();
		return response()->json([
							'success' => 1,
							'pesan'   => $db]);
	}
	

	public function simpan_JenisKendaraan(Request $request) {
		$messsages = array(
		'jenis_kendaraan.required'=>'jenis kendaraan harus diisi',
		'beban_minimal.required'=>'sertakan Beban Minimal',
		'beban_maksimal.required'=>'sertakan Beban Maksimal',		
		'status_aktif.required'=>'Tentukan Status');
		
		$input = $request->all();
		$rules = array('jenis_kendaraan' => 'Required',
						'beban_minimal' => 'Required',
						'beban_maksimal' => 'Required',
						'status_aktif' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json(['success'=>0,  'pesan'=>$validator->messages()->all()]);}
		else {
		
		$newkode = AturId::AmbilId('id_jenis_kendaraan','jenis_kendaraan','jen','4','6');	
		$input['id_jenis_kendaraan'] = $newkode;
		$hasil = DB::table('jenis_kendaraan')->insert($input);	
		if($hasil){
			return response()->json(['success' => 1,'pesan' =>'Jenis Kendaraan Berhasil ditambahkan']);		
		}
		else{
			return response()->json(['success' => 1,'pesan' =>'Jenis Kendaraan gagal ditambahkan']);	
		}
				
	}
	}
	
	public function Edit_JenisKendaraan(Request $request, $id){
			$db = DB::table('jenis_kendaraan')
							->where('id_jenis_kendaraan',$id)
							->update($request->all());	
			if($db)
			{	
				return response()->json(['success'=>1,  'pesan'=>'Data Berhasi diubah']);
			}
			else{
				return response()->json(['success'=>0,  'pesan'=>'Gagal Menggubah data']);
			}
	}
	public function hapus_JenisKendaraan($id){
			$db = DB::table('jenis_kendaraan');
			$query = $db->where('id_jenis_kendaraan',$id)->delete();	
			if($query){				
				return response()->json(['success'=>1,  'pesan'=>'Data Berhasi dihapus']);
			}
			else {
				return response()->json(['success'=>0,  'pesan'=>'Gagal Menghapus data']);
			}			
	}
	
	///////////////////// set kurir//////////////////////////////////
	
	public function get_kurir(){
		$db = DB::table('set_kurir')
						->join('pengguna', 'set_kurir.id_pengguna', '=', 'pengguna.id_pengguna')
						->join('jenis_kendaraan', 'set_kurir.id_jenis_kendaraan', '=', 'jenis_kendaraan.id_jenis_kendaraan')
						->select('id_kurir','no_polisi','url_foto_kendaraan','nama','jenis_kendaraan')
						->where('pengguna.status_aktif','=','1')
						->get();
		return response()->json([
							'success' => 1,
							'pesan'   => $db]);
	}
	public function detail_kurir($id){
		$db = DB::table('set_kurir')
						->join('pengguna', 'set_kurir.id_pengguna', '=', 'pengguna.id_pengguna')
						->join('jenis_kendaraan', 'set_kurir.id_jenis_kendaraan', '=', 'jenis_kendaraan.id_jenis_kendaraan')
						->where('id_kurir',$id)
						->first();
		return response()->json([
							'success' => 1,
							'pesan'   => $db]);
	}
	

	public function simpan_kurir(Request $request) {
	
		$messsages = array(
		'id_pengguna.required'=>'id pengguna masi kosong',
		'id_jenis_kendaraan.required'=>'id jenis kendaraan masi kosong',
		'no_polisi.required'=>'sertakan nomor polisi',		
		'url_foto_kendaraan.required'=>'gambar harus di sertakan');
		
		$input = $request->all();
		$image = $request['url_foto_kendaraan'];
		$rules = array('id_pengguna' => 'Required',
						'id_jenis_kendaraan' => 'Required',
						'no_polisi' => 'Required',
						'url_foto_kendaraan' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		if ($validator->fails()) {
			return response()->json(['success'=>0,  'pesan'=>$validator->messages()->all()]);}
		else {
		$newkode = AturId::AmbilId('id_kurir','set_kurir','kurir','6','12');	
		$input['id_kurir'] = $newkode;
		$nama_gambar = KompresFoto::UbahUkuran($image);	
		$input['url_foto_kendaraan'] = $nama_gambar;
		$hasil = DB::table('set_kurir')->insert($input);	
		if($hasil){
			return response()->json(['success' => 1,'pesan' =>'kurir Berhasil ditambahkan']);		
		}
		else{
			return response()->json(['success' => 1,'pesan' =>'kurir Kendaraan gagal ditambahkan']);	
		}
				
	}
	}
	
	public function Edit_kurir(Request $request, $id){
			$input = $request->all();
			$image = $request['url_foto_kendaraan'];
			$db = DB::table('set_kurir');
			if($image != null){
			$gambar = $db->select('url_foto_kendaraan')->where('id_kurir',$id)->get();
			$hapus = KompresFoto::HapusFoto($gambar[0]->url_foto_kendaraan);
			$nama_gambar = KompresFoto::UbahUkuran($image);	
			$input['url_foto_kendaraan'] = $nama_gambar;
			}			
			$hasil = $db->where('id_kurir',$id)->update($input);	
			if($db)
			{	
				return response()->json(['success'=>1,  'pesan'=>'Data Berhasi diubah']);
			}
			else{
				return response()->json(['success'=>0,  'pesan'=>'Gagal Menggubah data']);
			}
	}
	
	
	public function hapus_kurir($id){
			$db = DB::table('set_kurir');
			$gambar = $db->select('url_foto_kendaraan')->where('id_kurir',$id)->get();
			$hapus = KompresFoto::HapusFoto($gambar[0]->url_foto_kendaraan);		
			if($gambar){
				$db->where('id_kurir',$id)->delete();						
				return response()->json(['success'=>1,  'pesan'=>'Data Berhasi dihapus']);
			}
			else {
				return response()->json(['success'=>0,  'pesan'=>'Gagal Menghapus data']);
			}		
	}
	
	
	
	
	
	
}
