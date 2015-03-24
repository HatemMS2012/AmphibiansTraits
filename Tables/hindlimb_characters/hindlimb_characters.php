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
        list($id
				,$min_femur_length
				,$max_femur_length
				,$mean_femur_length
				,$min_tibia_shank_length
				,$max_tibia_shank_length
				,$mean_tibia_shank_length
				,$min_foot_length
				,$max_foot_length
				,$mean_foot_length
				,$min_total_foot_length
				,$max_total_foot_length
				,$medium_total_foot_length
				,$min_first_toe_length
				,$max_first_toe_length
				,$mean_first_toe_length
				,$min_second_toe_length
				,$max_second_toe_length
				,$mean_second_toe_length
				,$min_third_toe_length
				,$max_third_toe_length
				,$mean_third_toe_length
				,$min_fourth_toe_length
				,$max_fourth_toe_length
				,$mean_fourth_toe_length
				,$min_fifth_toe_length
				,$max_fifth_toe_length
				,$mean_fifth_toe_length
				,$webbing_on_toe
				,$dermal_fringe_along_toe
				,$lateral_dermal_fringe_on_toe
				,$supernumerary_tubercle_on_toes
				,$inner_metatarsal_tubercle
				,$outer_metatarsal_tubercle
				) = str_getcsv($row, $SEP,'"') ; //  explode(';', $row);
        
		$hindlimb_characters	= new Dataface_Record('hindlimb_characters', array());
         // We insert the default values for the record.
        $hindlimb_characters->setValues($defaultValues);  
		
		$hindlimb_characters->setValues(
				array(
					 'id'=>trim($id),
					 'min_femur_length'=>trim($min_femur_length),
					 'max_femur_length'=>trim($max_femur_length),
					 'mean_femur_length'=>trim($mean_femur_length),
					 'min_tibia_shank_length'=>trim($min_tibia_shank_length),
					 'max_tibia_shank_length'=>trim($max_tibia_shank_length),
					 'mean_tibia_shank_length'=>trim($mean_tibia_shank_length),
					 'min_foot_length'=>trim($min_foot_length),
					 'max_foot_length'=>trim($max_foot_length),
					 'mean_foot_length'=>trim($mean_foot_length),
					 'min_total_foot_length'=>trim($min_total_foot_length),
					 'max_total_foot_length'=>trim($max_total_foot_length),
					 'medium_total_foot_length'=>trim($medium_total_foot_length),
					 'min_first_toe_length'=>trim($min_first_toe_length),
					 'max_first_toe_length'=>trim($max_first_toe_length),
					 'mean_first_toe_length'=>trim($mean_first_toe_length),
					 'min_second_toe_length'=>trim($min_second_toe_length),
					 'max_second_toe_length'=>trim($max_second_toe_length),
					 'mean_second_toe_length'=>trim($mean_second_toe_length),
					 'min_third_toe_length'=>trim($min_third_toe_length),
					 'max_third_toe_length'=>trim($max_third_toe_length),
					 'mean_third_toe_length'=>trim($mean_third_toe_length),
					 'min_fourth_toe_length'=>trim($min_fourth_toe_length),
					 'max_fourth_toe_length'=>trim($max_fourth_toe_length),
					 'mean_fourth_toe_length'=>trim($mean_fourth_toe_length),
					 'min_fifth_toe_length'=>trim($min_fifth_toe_length),
					 'max_fifth_toe_length'=>trim($max_fifth_toe_length),
					 'mean_fifth_toe_length'=>trim($mean_fifth_toe_length),
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