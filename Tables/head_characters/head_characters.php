<?php
class tables_head_characters {
function trackUser($recordID,$action,$userID){
		//for user tracking information
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();		
		$record	= new Dataface_Record('user_tracking', array());
			 // We insert the default values for the record.
			//$record->setValues($defaultValues);  
			
			$record->setValues(
					array(
						'userid'=>trim($userID),
						'head_char_id' => trim($recordID),
						'action'=> $action,
						)
				);
			$record->save();
	
	}
	
	function afterInsert(&$record){
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();
		$this->trackUser($record->strval('id'),'INSERT',$user->val('UserName'));
	}
		
	//for user tracking information
	function afterUpdate(&$record){
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();
		$this->trackUser($record->strval('id'),'UPDATE',$user->val('UserName'));
	}
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
        list(
				$id,
				$min_head_length,
				$max_head_length,
				$mean_head_length,
				$min_head_width,
				$max_head_width,
				$mean_head_width,
				$min_snout_length,
				$max_snout_length,
				$mean_snout_length,
				$min_internarial_distance,
				$max_internarial_distance,
				$mean_internarial_distance,
				$min_nostril_to_snout_distance,
				$max_nostril_to_snout_distance,
				$mean_nostril_to_snout_distance,
				$min_eye_to_nostril,
				$max_eye_to_nostril,
				$mean_eye_to_nostril,
				$min_tympanum_diameter,
				$max_tympanum_diameter,
				$mean_tympanum_diameter,
				$min_eye_length,
				$max_eye_length,
				$mean_eye_length,
				$min_distance_between_front_of_eyes,
				$max_distance_between_front_of_eyes,
				$mean_distance_between_front_of_eyes,
				$min_distance_between_behind_of_eyes,
				$max_distance_between_behind_of_eyes,
				$mean_distance_between_behind_of_eyes,
				$min_interorbital_distance,
				$max_interorbital_distance,
				$mean_interorbital_distance,
				$snout_shape_lateral,
				$snout_shape_dorsal,
				$interorbital_shape,
				$parietal_eye,
				$loreal_region_shape,
				$canthus_rostralis,
				$nostril_shape,
				$tympanum_shape,
				$vocal_sac_manifestation,
				$vocal_sac_form,
				$vocal_sac_distensibility,
				$tympanum_covering

				) = str_getcsv($row, $SEP,'"') ; // explode(';', $row);
        
		$head_characters = new Dataface_Record('head_characters', array());
         // We insert the default values for the record.
        $head_characters->setValues($defaultValues);  
		
		$head_characters->setValues(
				array(
					'id'=>trim($id),
				 'min_head_length'=>trim($min_head_length),
				 'max_head_length'=>trim($max_head_length),
				 'mean_head_length'=>trim($mean_head_length),
				 'min_head_width'=>trim($min_head_width),
				 'max_head_width'=>trim($max_head_width),
				 'mean_head_width'=>trim($mean_head_width),
				 'min_snout_length'=>trim($min_snout_length),
				 'max_snout_length'=>trim($max_snout_length),
				 'mean_snout_length'=>trim($mean_snout_length),
				 'min_internarial_distance'=>trim($min_internarial_distance),
				 'max_internarial_distance'=>trim($max_internarial_distance),
				 'mean_internarial_distance'=>trim($mean_internarial_distance),
				 'min_nostril_to_snout_distance'=>trim($min_nostril_to_snout_distance),
				 'max_nostril_to_snout_distance'=>trim($max_nostril_to_snout_distance),
				 'mean_nostril_to_snout_distance'=>trim($mean_nostril_to_snout_distance),
				 'min_eye_to_nostril'=>trim($min_eye_to_nostril),
				 'max_eye_to_nostril'=>trim($max_eye_to_nostril),
				 'mean_eye_to_nostril'=>trim($mean_eye_to_nostril),
				 'min_tympanum_diameter'=>trim($min_tympanum_diameter),
				 'max_tympanum_diameter'=>trim($max_tympanum_diameter),
				 'mean_tympanum_diameter'=>trim($mean_tympanum_diameter),
				 'min_eye_length'=>trim($min_eye_length),
				 'max_eye_length'=>trim($max_eye_length),
				 'mean_eye_length'=>trim($mean_eye_length),
				 'min_distance_between_front_of_eyes'=>trim($min_distance_between_front_of_eyes),
				 'max_distance_between_front_of_eyes'=>trim($max_distance_between_front_of_eyes),
				 'mean_distance_between_front_of_eyes'=>trim($mean_distance_between_front_of_eyes),
				 'min_distance_between_behind_of_eyes'=>trim($min_distance_between_behind_of_eyes),
				 'max_distance_between_behind_of_eyes'=>trim($max_distance_between_behind_of_eyes),
				 'mean_distance_between_behind_of_eyes'=>trim($mean_distance_between_behind_of_eyes),
				 'min_interorbital_distance'=>trim($min_interorbital_distance),
				 'max_interorbital_distance'=>trim($max_interorbital_distance),
				 'mean_interorbital_distance'=>trim($mean_interorbital_distance),
				 'snout_shape_lateral'=>trim($snout_shape_lateral),
				 'snout_shape_dorsal'=>trim($snout_shape_dorsal),
				 'interorbital_shape'=>trim($interorbital_shape),
				 'parietal_eye'=>trim($parietal_eye),
				 'loreal_region_shape'=>trim($loreal_region_shape),
				 'canthus_rostralis'=>trim($canthus_rostralis),
				 'nostril_shape'=>trim($nostril_shape),
				 'tympanum_shape'=>trim($tympanum_shape),
				 'vocal_sac_manifestation'=>trim($vocal_sac_manifestation),
				 'vocal_sac_form'=>trim($vocal_sac_form),
				 'vocal_sac_distensibility'=>trim($vocal_sac_distensibility),
				 'tympanum_covering'=>trim($tympanum_covering)

		
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