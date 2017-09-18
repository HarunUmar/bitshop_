<?php

namespace App\Lib;
use App\Lib\Acak;
use Intervention\Image\Facades\Image as Image;
class KompresFoto {
 public static function UbahUkuran($image){
			
			$angka = Acak::Kaseputar(20);
            $filename  = time().'-'.$angka.'.' . $image->getClientOriginalExtension();
            $path =('images/images-100/' . $filename);
			$path1 =('images/images-400/' . $filename);
			$path2 =('images/images-700/' . $filename);
			Image::make($image->getRealPath())->resize(100, 100)->save($path);
			Image::make($image->getRealPath())->resize(400, 400)->save($path1);
			Image::make($image->getRealPath())->resize(700, 700)->save($path2);
			return $filename;
	}
	
	
	public static function HapusFoto($image){	
	unlink('images/images-100/'.$image);
	unlink('images/images-400/'.$image);
	unlink('images/images-700/'.$image);
	}
}