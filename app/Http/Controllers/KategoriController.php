<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\Kategori;
use Validator;
use Illuminate\Support\Facades\Hash;
use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Hashing\BcryptHasher;
use App\Lib\AturId;
use App\Lib\KompresFoto;
use Illuminate\Support\Facades\Input;


class KategoriController extends BaseController
{
     public function index(){
		
	}	
		
	public function get_kategori($offset) {
		
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			$limit = 10;
			$db = DB::table('kategori');
			$count = $db->count();
			$hasil = $db->where('status_aktif','=','1')
						->orderBy('id_kategori','desc');
			
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
	
	public function get_kategori_layanan($id,$offset) {
		
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			$limit = 10;
			$db = DB::table('kategori');
			$count = $db->count();
			$hasil = $db->where('status_aktif','=','1')
						->where('layanan','=',$id)
						->orderBy('id_kategori','desc');
			
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
	
	public function simpan_kategori(Request $request) {
		$messsages = array(
        'url_icon.required'=>'Gambar Kategori Harus Disertakan',
		'nama_kategori.required'=>'Nama kategori Harus Diisi',
		'layanan.required'=>'Tentukan jenis layanan',		
		'status_aktif.required'=>'Tentukan Status');
		
		$input = $request->all();
		$image = $input['url_icon'];
		$rules = array('nama_kategori' => 'Required',
						'layanan' => 'Required',
						'url_icon' =>'required|mimes:jpeg,png,jpg,gif|max:2048',
						'status_aktif' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json([['success'=>0,  'pesan'=>$validator->messages()->all()]]);}
		else {
		$newkode = AturId::AmbilId('id_kategori','kategori','kat','4','3');	
		$nama_gambar = KompresFoto::UbahUkuran($image);	
		$hasil = DB::table('kategori')->insert([
									'id_kategori'   => $newkode,
									'nama_kategori' => $request['nama_kategori'],
									'url_icon' => $nama_gambar,
									'layanan' => $request['layanan'],
									'status_aktif' => $request['status_aktif']]);	
		return response()->json([['success' => 1,'pesan' =>'Data Kategori Berhasil disimpan']]);}				
	}
	
	public function EditKategori(Request $request, $id){
			
			$input = $request->all();
			$image = $request['url_icon'];
			$db = DB::table('kategori');
			$gambar = $db->select('url_icon')->where('id_kategori',$id)->get();
			if($image != null){
			$hapus = KompresFoto::HapusFoto($gambar[0]->url_icon);
			$nama_gambar = KompresFoto::UbahUkuran($image);	
			$input['url_icon'] = $nama_gambar;
			}
			else {
				
				$input['url_icon'] = $gambar[0]->url_icon;
			}
			
			$hasil = $db->where('id_kategori',$id)->update($input);	
			if($db)
			{	
				return response()->json([['success'=>1,  'pesan'=>'Data Berhasi diubah']]);
			}
			else{
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menggubah data']]);
			}
			
				
	}
	
	
	public function HapusKategori($id){
			$db = DB::table('kategori');
			$gambar = $db->select('url_icon')->where('id_kategori',$id)->get();
			$hapus = KompresFoto::HapusFoto($gambar[0]->url_icon);		
			if($gambar){
				$db->where('id_kategori',$id)->delete();						
				return response()->json([['success'=>1,  'pesan'=>'Data Berhasi dihapus']]);
			}
			else {
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menghapus data']]);
			}			
	}
	
}
