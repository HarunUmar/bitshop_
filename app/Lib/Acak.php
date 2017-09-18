<?php

namespace App\Lib;
class Acak {
 public static function Kaseputar($id = 20){
		$pool = '1234567890abcdefghijkmnpqrstuvwxyz';		
		$word = '';
		for ($i = 0; $i < $id; $i++){
			$word .= substr($pool, mt_rand(0, strlen($pool) -1), 1);
		}
		return $word; 
	}
}