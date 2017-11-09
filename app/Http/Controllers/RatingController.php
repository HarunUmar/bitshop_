<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Validator;
use Illuminate\Support\Facades\Hash;
use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Hashing\BcryptHasher;
use App\Lib\AturId;
use Illuminate\Support\Facades\Input;


class RatingController extends BaseController
{
     public function index(){
		
	}	
		
	public function get_rating($tentang, $offset) {
	
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			if($tentang == 'item'){
				
			$db = DB::table('rating_item');
			$count = $db->count();
			$hasil = $db->join('item', 'rating_item.id_item', '=', 'item.id_item')
						->join('pengguna', 'rating_item.id_pengguna', '=', 'pengguna.id_pengguna')
						->select('rating_item.id_rate_item','rating_item.id_item','rating_item.rating','rating_item.ulasan','rating_item.tgl_rating')
						->orderBy('id_item','desc');	
			}
			else if($tentang == "kurir"){
			
			$db = DB::table('rating_kurir');
			$count = $db->count();
			$hasil = $db->join('set_kurir', 'rating_kurir.id_kurir', '=', 'set_kurir.id_kurir')
						->join('pengguna', 'rating_kurir.id_pengguna', '=', 'pengguna.id_pengguna')
						->select('rating_kurir.id_rate_kurir','set_kurir.id_kurir','rating_kurir.rating','rating_kurir.ulasan','rating_kurir.tgl_rating')
						->orderBy('id_rate_kurir','desc');
						
			}
			else {$result = "opsss";}
			
			
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
	
	public function detail_rating($tentang,$id) {
		
			if($tentang == 'item'){
				
			$db = DB::table('rating_item');
			$count = $db->count();
			$hasil = $db->join('item', 'rating_item.id_item', '=', 'item.id_item')
						->join('pengguna', 'rating_item.id_pengguna', '=', 'pengguna.id_pengguna')
						->select('rating_item.id_rate_item','rating_item.id_item','rating_item.rating','rating_item.ulasan','rating_item.tgl_rating','pengguna.nama')
						->where('rating_item.id_rate_item','=',$id)
						->orderBy('id_item','desc')
						->get();	
					
			}
			else if($tentang == "kurir"){
			
			$db = DB::table('rating_kurir');
			$count = $db->count();
			$hasil = $db->join('set_kurir', 'rating_kurir.id_kurir', '=', 'set_kurir.id_kurir')
						->join('pengguna', 'rating_kurir.id_pengguna', '=', 'pengguna.id_pengguna')
						->select('rating_kurir.id_rate_kurir','set_kurir.id_kurir','rating_kurir.rating','rating_kurir.ulasan','rating_kurir.tgl_rating','pengguna.nama','url_foto_kendaraan','no_polisi')
						
						->where('rating_kurir.id_rate_kurir','=',$id)
						->orderBy('id_rate_kurir','desc')
						->get();
						
			}
			return response()->json([['success' => 1,'pesan' =>$hasil]]);		
	
	}
	
	public function simpan_rating(Request $request,$tentang) {
		$messsages = array(
		'id_item.required'=>'tidak ada id item',
		'id_kurir.required'=>'tidak ada id kurir',
		'id_pengguna.required'=>'tidak ada id pengguna',
		'rating.required'=>'rating belum diisi',		
		'ulasan.required'=>'Tentukan ulasan');	
		$input = $request->all();
		
		
		
		if($tentang == "item"){
		
				$rules = array(	
						'id_item' => 'required',
						'id_pengguna' =>'required',
						'rating' =>'required',
						'ulasan' =>'required');		
		}
		else{
			$rules = array(	
						'id_kurir' => 'required',
						'id_pengguna' =>'required',
						'rating' =>'required',
						'ulasan' =>'required');	
		
		}
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json(['success'=>0,  'pesan'=>$validator->messages()->all()]);}
		else {
			if($tentang == "item"){
				$newkode = AturId::AmbilId('id_rate_item','rating_item','ratei','6','12');	
				$input['id_rate_item'] = $newkode;
				$hasil = DB::table('rating_item')->insert($input);	
			}
			else {
				
				$newkode = AturId::AmbilId('id_rate_kurir','rating_kurir','ratek','6','12');	
				$input['id_rate_kurir'] = $newkode;
				$hasil = DB::table('rating_kurir')->insert($input);	
			}
		
		return response()->json([['success' => 1,'pesan' =>'berhasil memberikan rating']]);}				
	}
	
	public function Edit_rating(Request $request,$tentang, $id){
			if($tentang == "item"){
						$db = DB::table('rating_item')
						->where('id_rate_item',$id);
						
			}
			else {
						$db = DB::table('rating_kurir')
						->where('id_rate_kurir',$id);;
			}
					$db->update($request->all());
								
			if($db)
			{	
				return response()->json([['success'=>1,  'pesan'=>'rating Berhasi diubah']]);
			}
			else{
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menggubah rating']]);
			}
	}
	public function Hapus_rating($tentang,$id){
			if($tentang == "item"){
						$db = DB::table('rating_item')
						->where('id_rate_item',$id)
						->delete();
						
			}
			else {
						$db = DB::table('rating_kurir')
						->where('id_rate_kurir',$id)
						->delete();
			}
			
			if($db){			
				return response()->json([['success'=>1,  'pesan'=>'reting Berhasi dihapus']]);
			}
			else {
				return response()->json([['success'=>0,  'pesan'=>'Gagal Menghapus rating']]);
			}			
	}
	
}
