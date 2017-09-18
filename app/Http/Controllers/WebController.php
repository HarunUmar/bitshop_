<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\User;
use App\Kategori;
use Validator;
use Illuminate\Support\Facades\Hash;
use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Hashing\BcryptHasher;
use App\Lib\AturId;
use App\Lib\KompresFoto;
use Illuminate\Support\Facades\Input;


class WebController extends BaseController
{
     public function index(){
		
	}	
	public function Masuk(Request $request){
	    $input = $request->all();
		$messsages = array(
        'email.required'=>'Email Harus Diisi',
		'password.required'=>'password Harus diisi');	
		$rules = array( 'email' => 'Required|Email',
						'password' => 'Required',);			
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json(['success'=>0,  'pesan'=>$validator->messages()->all()]);}
		else {
			$user = DB::table('pengguna')->where('email',$input['email'])->first();
			if(Hash::check($request->input('password'), $user->password)){
				return response()->json(['success'=>1,  'pesan'=>'Login Berhasi']);}
			else {
				return response()->json(['success'=>0,  'pesan'=>'Login Gagal']);
			}
		}
	}
	
	public function Daftar(Request $request){
		
		$messsages = array(
        'email.required'=>'Format Email Tidak Valid',
		'nama.required'=>'Nama Harus Di isi',
		'no_hp.required'=>'No Hp harus diisi',
		'level.required'=>'Level Harus diisi',
		'password.required'=>'password Harus diisi',
		'status_aktif.required'=>'Tentukan Status');
		
		$input = $request->all();
		$rules = array( 'email' => 'Required|Between:3,64|Email|Unique:pengguna',
						'nama' => 'Required',
						'no_hp' => 'Required',
						'level' => 'Required',
						'status_aktif' => 'Required',
						'password' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		if ($validator->fails()) {
			return response()->json(['success'=>0,  'pesan'=>$validator->messages()->all()]);}
		else 
		{ 	
		$input['id_pengguna'] = AturId::AmbilId('id_pengguna','pengguna','bit','4','10');	
		$input['password'] =(new BcryptHasher)->make($input['password']);
		$daftar = User::create($input);
		return response()->json(['success' => 1,'pesan' =>'Pendaftaran Berhasil']);}

	}
	
	public function simpan_kategori(Request $request) {
		$messsages = array(
        'url_icon.required'=>'Gambar Kategori Harus Disertakan',
		'nama_kategori.required'=>'Nama kategori Harus Diisi',	
		'status_aktif.required'=>'Tentukan Status');
		
		$input = $request->all();
		$image = $input['url_icon'];
		$rules = array('nama_kategori' => 'Required',
						'url_icon' =>'required|mimes:jpeg,png,jpg,gif|max:2048',
						'status_aktif' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json(['success'=>0,  'pesan'=>$validator->messages()->all()]);}
		else {
		$newkode = AturId::AmbilId('id_kategori','kategori','kat','4','3');	
		$nama_gambar = KompresFoto::UbahUkuran($image);	
		$hasil = DB::table('kategori')->insert([
									'id_kategori'   => $newkode,
									'nama_kategori' => $request['nama_kategori'],
									'url_icon' => $nama_gambar,
									'status_aktif' => $request['status_aktif']]);	
		return response()->json(['success' => 1,'pesan' =>'Data Kategori Berhasil disimpan']);}				
	}
	
	public function EditKategori(Request $request, $id){
			$db = DB::table('kategori')
							->where('id_kategori',$id)
							->update($request->all());	
			if($db)
			{	
				return response()->json(['success'=>1,  'pesan'=>'Data Berhasi diubah']);
			}
			else{
				return response()->json(['success'=>0,  'pesan'=>'Gagal Menggubah data']);
			}
	}
	
	public function HapusKategori($id){
			$db = DB::table('kategori');
			$gambar = $db->select('url_icon')->where('id_kategori',$id)->get();
			$hapus = KompresFoto::HapusFoto($gambar[0]->url_icon);		
			if($gambar){
				$db->where('id_kategori',$id)->delete();						
				return response()->json(['success'=>1,  'pesan'=>'Data Berhasi dihapus']);
			}
			else {
				return response()->json(['success'=>0,  'pesan'=>'Gagal Menghapus data']);
			}
	}
}
