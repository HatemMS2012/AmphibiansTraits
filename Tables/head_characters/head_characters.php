<?php
class tables_head_characters {

function __import__csv(&$data, $defaultValues=array()){
    // build an array of Dataface_Record objects that are to be inserted based
    // on the CSV file data.
    $records = array();
    
    // first split the CSV file into an array of rows.
    $rows = explode("\n", $data);
	
	$i=0;
	
    foreach ( $rows as $row ){
		
		if($i == 0) {
				
			echo $row;
			$i++;
		
		continue;
		}
		
        // We iterate through the rows and parse the fields so that they can be stored in a Dataface_Record object.
        list($Id,$head_length,$head_width,$snout_length,$internarial_distance,$nostril_to_snout_distance,$eye_to_nostril,$maximum_tympanum_diameter,
			$eye_length,$distance_between_front_of_eyes,$distance_between_behind_of_eyes,$interorbital_distance,$snout_shape_lateral,
			$snout_shape_dorsal,$interorbital_shape,$loreal_region_shape,$canthus_rostralis,$nostril_shape,$tympanum_shape) = explode(';', $row);
        
		$head_characters = new Dataface_Record('head_characters', array());
         // We insert the default values for the record.
        $head_characters->setValues($defaultValues);  
		
		$head_characters->setValues(
				array(
					'id'=>trim($Id),
					'head_length'=>trim($head_length),
					'head_width'=>trim($head_width),
					'snout_length'=>trim($snout_length),
					'internarial_distance'=>trim($internarial_distance),
					'nostril_to_snout_distance'=>trim($nostril_to_snout_distance),
					'eye_to_nostril'=>trim($eye_to_nostril),
					'maximum_tympanum_diameter'=>trim($maximum_tympanum_diameter),
					'eye_length'=>trim($eye_length),
					'distance_between_front_of_eyes'=>trim($distance_between_front_of_eyes),
					'distance_between_behind_of_eyes'=>trim($distance_between_behind_of_eyes),
					'interorbital_distance'=>trim($interorbital_distance),
					'snout_shape_lateral'=>trim($snout_shape_lateral),
					'snout_shape_dorsal'=>trim($snout_shape_dorsal),
					'interorbital_shape'=>trim($interorbital_shape),
					'loreal_region_shape'=>trim($loreal_region_shape),
					'canthus_rostralis'=>trim($canthus_rostralis),
					'nostril_shape'=>trim($nostril_shape),
					'tympanum_shape'=>trim($tympanum_shape)
		
					)
			);
		$head_characters->save();
		
		
		
		
        $records[] = $head_characters ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>