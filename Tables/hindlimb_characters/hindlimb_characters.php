<?php
class tables_hindlimb_characters {
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
						'hindlimb_characters_id' => trim($recordID),
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
        list($Id, $femur_length_min,$femur_length_max,$tibia_shank_length,$foot_length,$total_foot_length,$first_toe_length,$second_toe_length,
			$third_toe_length,$fourth_toe_length,$fifth_toe_length,$webbing_on_toe,$dermal_fringe_along_toe,$lateral_dermal_fringe_on_toe,
			$supernumerary_tubercle_on_toes,$inner_metatarsal_tubercle,$outer_metatarsal_tubercle) = str_getcsv($row, $SEP,'"') ; //  explode(';', $row);
        
		$hindlimb_characters	= new Dataface_Record('hindlimb_characters', array());
         // We insert the default values for the record.
        $hindlimb_characters->setValues($defaultValues);  
		
		$hindlimb_characters->setValues(
				array(
					'id'=>trim($Id),
					'femur_length_min'=>trim($femur_length_min),
					'femur_length_max'=>trim($femur_length_max),
					'tibia_shank_length'=>trim($tibia_shank_length),
					'foot_length'=>trim($foot_length),
					'total_foot_length'=>trim($total_foot_length),
					'first_toe_length'=>trim($first_toe_length),
					'second_toe_length'=>trim($second_toe_length),
					'third_toe_length'=>trim($third_toe_length),
					'fourth_toe_length'=>trim($fourth_toe_length),
					'fifth_toe_length'=>trim($fifth_toe_length),
					'webbing_on_toe'=>trim($webbing_on_toe),
					'dermal_fringe_along_toe'=>trim($dermal_fringe_along_toe),
					'lateral_dermal_fringe_on_toe'=>trim($lateral_dermal_fringe_on_toe),
					'supernumerary_tubercle_on_toes'=>trim($supernumerary_tubercle_on_toes),
					'inner_metatarsal_tubercle'=>trim($inner_metatarsal_tubercle),
					'outer_metatarsal_tubercle'=>trim($outer_metatarsal_tubercle)
					)
			);
		$hindlimb_characters->save();
		
		
		
		
        $records[] = $hindlimb_characters ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>