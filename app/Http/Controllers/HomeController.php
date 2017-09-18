<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Http\Response;

class HomeController extends BaseController
{
    
	public function Home(){
	 
		return response()->json([
					'success' => 1,
					'pesan' =>'welcome to api bitshop']);			
		}
		
	public function About(){
		return response()->json([
			   'success' =>1,
			   'pesan' => 'docs api http://tarsiustech.com']);
	}

	
}
