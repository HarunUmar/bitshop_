<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use App\User;
use Validator;
use Illuminate\Support\Facades\Hash;
use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Hashing\BcryptHasher;
use App\Lib\AturId;

class LdanRController extends BaseController
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
				return response()->json([['success'=>1,  'pesan'=>'Login Berhasi']]);}
			else {
				return response()->json([['success'=>0,  'pesan'=>'Login Gagal']]);
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
			return response()->json([['success'=>0,  'pesan'=>$validator->messages()->all()]]);}
		else 
		{ 	
		$input['id_pengguna'] = AturId::AmbilId('id_pengguna','pengguna','bit','4','10');	
		$input['password'] =(new BcryptHasher)->make($input['password']);
		$daftar = User::create($input);
		return response()->json([['success' => 1,'pesan' =>'Pendaftaran Berhasil']]);}

	}	
}
