<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use DB;


class MobiController extends BaseController
{
    public function index(){
		
				return response()->json([
					'success' => 1,
					'pesan' =>'welcome to api bitshop']);						
	}
	



	
	
	
}
