<?php
class tables_forlimb_characters {
//for user tracking information
	function trackUser($recordID,$action,$userID){
		//for user tracking information
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();		
		$user_tracking	= new Dataface_Record('user_tracking', array());
			 // We insert the default values for the record.
			//$user_tracking->setValues($defaultValues);  
			
			$user_tracking->setValues(
					array(
						'userid'=>trim($userID),
						'forlimb_char_id' => trim($recordID),
						'action'=> $action,
						)
				);
			$user_tracking->save();
	
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
        list($Id, 
				  $min_forelimb_length, $max_forelimb_length, $mean_forelimb_length, $min_humerus_length, $max_humerus_length, $mean_humerus_length, 
			      $min_hand_length, $max_hand_length, $mean_hand_length, $min_first_finger_length, 	$max_first_finger_length, $mean_first_finger_length, 
				  $min_second_finger_length, $max_second_finger_length, $mean_second_finger_length, $min_third_finger_length, $max_third_finger_length, 
				  $mean_third_finger_length, $min_forth_finger_length, $max_forth_finger_length, $mean_forth_finger_length, $finger_disk, $dermal_fringe_along_finger, 
				  $lateral_dermal_fringe_on_finger, $webbing_on_finger, $inner_palmar_tubercle, $outer_plmar_tubercle, 	$supernumerary_tubercle_on_finger) = str_getcsv($row, $SEP,'"') ; // explode(';', $row);
        
		
		$forlimb_characters	= new Dataface_Record('forlimb_characters', array());
         // We insert the default values for the record.
        $forlimb_characters->setValues($defaultValues);  
		
		$forlimb_characters->setValues(
				array(
					'id'=>trim($Id),
					
					'min_forelimb_length'=> 	trim($min_forelimb_length),
					'max_forelimb_length'=> 	trim($max_forelimb_length),
					'mean_forelimb_length'=> 	trim($mean_forelimb_length),
					'min_humerus_length'=> 	trim($min_humerus_length),
					'max_humerus_length'=> 	trim($max_humerus_length),
					'mean_humerus_length'=> 	trim($mean_humerus_length),
					'min_hand_length'=> 	trim($min_hand_length),
					'max_hand_length'=> 	trim($max_hand_length),
					'mean_hand_length'=> 	trim($mean_hand_length),
					'min_first_finger_length'=> 	trim($min_first_finger_length),
					'max_first_finger_length'=> 	trim($max_first_finger_length),
					'mean_first_finger_length'=> 	trim($mean_first_finger_length),
					'min_second_finger_length'=> 	trim($min_second_finger_length),
					'max_second_finger_length'=> 	trim($max_second_finger_length),
					'mean_second_finger_length'=> 	trim($mean_second_finger_length),
					'min_third_finger_length'=> 	trim($min_third_finger_length),
					'max_third_finger_length'=> 	trim($max_third_finger_length),
					'mean_third_finger_length'=> 	trim($mean_third_finger_length),
					'min_forth_finger_length'=> 	trim($min_forth_finger_length),
					'max_forth_finger_length'=> 	trim($max_forth_finger_length),
					'mean_forth_finger_length'=> 	trim($mean_forth_finger_length),
					'finger_disk'=> 	trim($finger_disk),
					'dermal_fringe_along_finger'=> 	trim($dermal_fringe_along_finger),
					'lateral_dermal_fringe_on_finger'=> 	trim($lateral_dermal_fringe_on_finger),
					'webbing_on_finger'=> 	trim($webbing_on_finger),
					'inner_palmar_tubercle'=> 	trim($inner_palmar_tubercle),
					'outer_plmar_tubercle'=> 	trim($outer_plmar_tubercle),
					'supernumerary_tubercle_on_finger'=> 	trim($supernumerary_tubercle_on_finger)

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