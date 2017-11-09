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


class ItemController extends BaseController
{
     public function index(){
		
	}	
		
	public function get_item($offset) {
		
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			$db = DB::table('gambar_item');
			$count = $db->count();
			$hasil = $db->join('item', 'gambar_item.id_item', '=', 'item.id_item')
						->join('kategori', 'item.id_kategori', '=', 'kategori.id_kategori')
						->join('set_lapak', 'item.id_lapak', '=', 'set_lapak.id_lapak')
						->join('pengguna', 'set_lapak.id_pengguna', '=', 'pengguna.id_pengguna')
						->select('item.id_item','pengguna.nama','gambar_item.url_gambar','item.label','item.rating','nama_item','item.berat_item','nama_lapak','deskripsi_lapak','harga','item.status_aktif')
						->where('item.status_aktif','=','1')
						->orderBy('item.id_item','desc');
			
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
	public function get_item_lapak($offset,$id) {
		
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			$db = DB::table('item');
			$count = $db->count();
			$hasil = $db->join('kategori', 'item.id_kategori', '=', 'kategori.id_kategori')
						->join('set_lapak', 'item.id_lapak', '=', 'set_lapak.id_lapak')
						->join('pengguna', 'set_lapak.id_pengguna', '=', 'pengguna.id_pengguna')
						->select('item.id_lapak','id_item','nama','nama_item','nama_lapak','deskripsi_lapak','harga')
						->where('item.id_lapak','=',$id)
						->orderBy('id_item','desc');
			
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
	
	public function detail_item($id) {
		
			$hasil = DB::table('item')
						->join('kategori', 'item.id_kategori', '=', 'kategori.id_kategori')
						->join('set_lapak', 'item.id_lapak', '=', 'set_lapak.id_lapak')
						->join('pengguna', 'set_lapak.id_pengguna', '=', 'pengguna.id_pengguna')
						->where('item.status_aktif','=','1')
						->where('item.id_item','=',$id)
						->get();
			return response()->json([['success' => 1,'pesan' =>$hasil]]);		
	
	}
	
	public function simpan_item(Request $request) {
		$messsages = array(
        'id_kategori.required'=>'id kategori masih kosong',
		'id_lapak.required'=>'id lapak harus di sertakan',
		'nama_item.required'=>'nama item tidak boleh kosong',
		'berat_item.required'=>'berat item harus di sertakan',	
		'harga.required'=>'harga item harus di isi',	
		'diskon.required'=>'Nama diskon harus di isi ',	
		'ket_diskon.required'=>'Keterangan Diskon masi kosong',	
		'label.required'=>'Label masih kosong',		
		'status_aktif.required'=>'Tentukan Status');
		
		$input = $request->all();
		$rules = array(	'id_kategori' => 'Required',
						'id_lapak' =>'required',
						'nama_item' =>'required',
						'berat_item' =>'required',
						'harga' =>'required',
						'diskon' =>'required',
						'ket_diskon' =>'required',
						'label' =>'required',
						'status_aktif' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json(['success'=>0,  'pesan'=>$validator->messages()->all()]);}
		else {
		$newkode = AturId::AmbilId('id_item','item','bitem','6','12');	
		$input['id_item'] = $newkode;
		$hasil = DB::table('item')->insert($input);	
		return response()->json([['success' => 1,'pesan' =>'Data item Berhasil disimpan']]);}				
	}
	
	public function Edit_item(Request $request, $id){
			$db = DB::table('item')
							->where('id_item',$id)
							->update($request->all());	
			if($db)
			{	
				return response()->json([['success'=>1,  'pesan'=>'Data Berhasi diubah']]);
			}
			else{
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menggubah data']]);
			}
	}
	public function Hapus_item($id){
			$db = DB::table('item')->where('id_item',$id)->delete();
			if($db){			
				return response()->json([['success'=>1,  'pesan'=>'Data Berhasi dihapus']]);
			}
			else {
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menghapus data']]);
			}			
	}
	
	public function get_gambar($id){
			
			$db = DB::table('gambar_item');
	
			$hasil = $db->where('id_item','=',$id)->get();
			
			if($hasil){
				return response()->json([['success' => 1,'pesan' =>$hasil]]);	
				
			}
			else{
				return response()->json([['success' => 0,'pesan' =>'terjadi kesalahan']]);	
			}
			
				
	}
	
	
	public function simpan_gambar(Request $request,$id){
		$messsages = array(
        'id_item.required'=>'id item Harus Disertakan',
		'url_gambar.required'=>'Url Gambar Harus ditentukan',	
		'tampil_utama.required'=>'jangan ada yang kosong');
		
		$input = $request->all();
		$image = $input['url_gambar'];
		$rules = array('id_item' => 'Required',
						'url_gambar' =>'required|mimes:jpeg,png,jpg,gif|max:2048',
						'tampil_utama' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json([['success'=>0,  'pesan'=>$validator->messages()->all()]]);}
		else {
		$newkode = AturId::AmbilId('id_gambar_item','gambar_item','gitem','6','15');	
		$nama_gambar = KompresFoto::UbahUkuran($image);	
		$hasil = DB::table('gambar_item')->insert([
									'id_gambar_item'   => $newkode,
									'id_item' => $request['id_item'],
									'url_gambar' => $nama_gambar,
									'tampil_utama' => $request['tampil_utama']]);	
									
		return response()->json([['success' => 1,'pesan' =>'gambar item Berhasil disimpan']]);}	
	}
	public function edit_gambar(Request $request, $id){
			
			$input = $request->all();
			$image = $request['url_gambar'];
			$db = DB::table('gambar_item');
			$gambar = $db->select('url_gambar')->where('id_gambar_item',$id)->get();
			if($image != null){
			$hapus = KompresFoto::HapusFoto($gambar[0]->url_gambar);
			$nama_gambar = KompresFoto::UbahUkuran($image);	
			$input['url_gambar'] = $nama_gambar;
			}	
			else {
				$input['url_gambar'] = $gambar[0]->url_gambar;
			}
			$hasil = $db->where('id_gambar_item',$id)->update($input);	
			if($db)
			{	
				return response()->json([['success'=>1,  'pesan'=>'Data Berhasi diubah']]);
			}
			else{
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menggubah data']]);
			}
				
	}
	
	public function hapus_gambar($id){
			$db = DB::table('gambar_item');
			$gambar = $db->select('url_gambar')->where('id_gambar_item',$id)->get();
			$hapus = KompresFoto::HapusFoto($gambar[0]->url_gambar);		
			if($gambar){
				$db->where('id_gambar_item',$id)->delete();						
				return response()->json([['success'=>1,  'pesan'=>'Data Berhasi dihapus']]);
			}
			else {
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menghapus data']]);
			}			
	}
}
