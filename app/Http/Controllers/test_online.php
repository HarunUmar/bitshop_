<form action="" method="POST">
<input type="text" name="karakter">
<input type="submit" value="Tukar" name="tukar">	

</form>

<?php



// buat function pengganti strlen bawaan php
function hitung($str){

	$count = 0;

	for ($i= 0; $i<10000000; $i++){

		if(@$str[$i] != "")$count++;
		else break;


	}

	return $count;
}

if(isset($_POST['tukar'])){



$target = $_POST['karakter'];
$jum = hitung($target);


for($a=$jum; $a >= 0; $a-= 1)
{

	echo @$target[$a];
}

}



?>