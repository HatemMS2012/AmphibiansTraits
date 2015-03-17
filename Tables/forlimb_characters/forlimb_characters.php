<?php
class tables_forlimb_characters {

function __import__csv(&$data, $defaultValues=array()){
    
	
	$SEP = ',';
	// build an array of Dataface_Record objects that are to be inserted based
    // on the CSV file data.
    $records = array();
    
    // first split the CSV file into an array of rows.
    $rows = explode("\n", $data);
	
	$i=0;
	
    foreach ( $rows as $row ){
		//skip empty rows
		if (strpos($row ,$SEP) ===  false) {
			continue;
		}
		if($i == 0) {
				
			echo $row;
			$i++;
		
		continue;
		}
		
        // We iterate through the rows and parse the fields so that they can be stored in a Dataface_Record object.
        list($Id, $forelimb_length,$humerus_length_min,$humerus_length_max,$hand_length,$first_finger_length,$second_finger_length,$third_finger_length,
			$forth_finger_length,$finger_disk,$dermal_fringe_along_finger,$lateral_dermal_fringe_on_finger,$webbing_on_finger,$inner_palmar_tubercle,
			$outer_plmar_tubercle,$supernumerary_tubercle_on_finger) = str_getcsv($row, $SEP,'"') ; // explode(';', $row);
        
		$forlimb_characters	= new Dataface_Record('forlimb_characters', array());
         // We insert the default values for the record.
        $forlimb_characters->setValues($defaultValues);  
		
		$forlimb_characters->setValues(
				array(
					'id'=>trim($Id),
					'forelimb_length'=>trim($forelimb_length),
					'humerus_length_min'=>trim($humerus_length_min),
					'humerus_length_max'=>trim($humerus_length_max),
					'hand_length'=>trim($hand_length),
					'first_finger_length'=>trim($first_finger_length),
					'second_finger_length'=>trim($second_finger_length),
					'third_finger_length'=>trim($third_finger_length),
					'forth_finger_length'=>trim($forth_finger_length),
					'finger_disk'=>trim($finger_disk),
					'dermal_fringe_along_finger'=>trim($dermal_fringe_along_finger),
					'lateral_dermal_fringe_on_finger'=>trim($lateral_dermal_fringe_on_finger),
					'webbing_on_finger'=>trim($webbing_on_finger),
					'inner_palmar_tubercle'=>trim($inner_palmar_tubercle),
					'outer_plmar_tubercle'=>trim($outer_plmar_tubercle),
					'supernumerary_tubercle_on_finger'=>trim($supernumerary_tubercle_on_finger)
					)
			);
		$forlimb_characters->save();
		
		
		
		
        $records[] = $forlimb_characters ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>