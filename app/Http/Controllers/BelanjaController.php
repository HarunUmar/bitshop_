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


class BelanjaController extends BaseController
{
     public function index(){
		
	}	
		
	public function get_belanja($offset) {
		
			$offset = isset($offset) && $offset != '' ? $offset : 0;
			$db = DB::table('keranjang_belanja as a');
			$count = $db->count();
			$hasil = $db->join('item as b', 'a.id_item', '=', 'b.id_item')
						->join('set_kurir as c', 'a.id_kurir', '=', 'c.id_kurir')
						->join('pengguna as d', 'c.id_pengguna', '=', 'd.id_pengguna')
						->join('pengguna as e', 'a.id_pengguna', '=', 'e.id_pengguna')
						->select('a.id_kb','b.nama_item','a.harga_saat_ini','a.diskon','a.total_harga_item','d.nama as nama_kurir','e.nama as nama_pelanggan')
						->orderBy('a.id_kb','desc');
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
	
	public function detail_belanja($id) {
		
			$hasil = DB::table('keranjang_belanja as a')
						->join('item as b', 'a.id_item', '=', 'b.id_item')
						->join('set_kurir as c', 'a.id_kurir', '=', 'c.id_kurir')
						->join('pengguna as d', 'c.id_pengguna', '=', 'd.id_pengguna')
						->join('pengguna as e', 'a.id_pengguna', '=', 'e.id_pengguna')
						->where('a.id_kb','=',$id)
						->get();
			return response()->json([['success' => 1,'pesan' =>$hasil]]);		
	
	}
	
	public function simpan_belanja(Request $request) {
		$messsages = array(
        'id_item.required'=>'id item masih kosong',
		'id_pengguna.required'=>'id pengguna harus di sertakan',
		'jumlah.required'=>'jumlah item tidak boleh kosong',
		'harga_saat_ini.required'=>'harga saat ini harus di sertakan',	
		'lng_lapak.required'=>'posisi (langtitude) lapak harus di isi',	
		'lti_lapak.required'=>'posisi (latitude) lapak harus di isi ',	
		'lng_tujuan.required'=>'posisi (langtitude) tujuan harus di isi',	
		'lti_tujuan.required'=>'posisi (latitude) tujuan harus di isi',
		'id_kurir.required'=>'id kurir masi kosong',	
		'tarif_berat.required'=>'tarif berat masi kosong',			
		'tarif_jarak.required'=>'tarif jarak masi kosong',
		'diskon.required'=>'diskon Diskon masi kosong',
		'total_harga_item.required'=>'total harga item masi kosong');
		
		$input = $request->all();
		$rules = array(	'id_item' => 'Required',
						'id_pengguna' =>'required',
						'jumlah' =>'required',
						'harga_saat_ini' =>'required',
						'lng_lapak' =>'required',
						'lti_lapak' =>'required',
						'lng_tujuan' =>'required',
						'lti_tujuan' =>'required',
						'id_kurir' =>'required',
						'tarif_berat' =>'required',
						'tarif_jarak' =>'required',
						'diskon' =>'required',
						'total_harga_item' => 'Required');
		$validator = Validator::make($input, $rules,$messsages);
		
		if ($validator->fails()) {
			return response()->json(['success'=>0,  'pesan'=>$validator->messages()->all()]);}
		else {
		$newkode = AturId::AmbilId('id_kb','keranjang_belanja','bshop','6','16');	
		$input['id_kb'] = $newkode;
		$hasil = DB::table('keranjang_belanja')->insert($input);	
		return response()->json([['success' => 1,'pesan' =>'item berhasil di pesan']]);}				
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
	
}
