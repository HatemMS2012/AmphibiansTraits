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
        list($Id,$head_length,$head_width,$snout_length,$internarial_distance,$nostril_to_snout_distance,$eye_to_nostril,$maximum_tympanum_diameter,
			$eye_length,$distance_between_front_of_eyes,$distance_between_behind_of_eyes,$interorbital_distance,$snout_shape_lateral,
			$snout_shape_dorsal,$interorbital_shape,$loreal_region_shape,$canthus_rostralis,$nostril_shape,$tympanum_shape) = str_getcsv($row, $SEP,'"') ; // explode(';', $row);
        
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