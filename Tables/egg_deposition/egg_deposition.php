<?php
class tables_egg_deposition {
//for user tracking information
	function trackUser($recordID,$action,$userID){
		//for user tracking information
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();		
		$user_tracking	= new Dataface_Record('user_tracking', array());
			 // We insert the default values for the record.
			$user_tracking->setValues($defaultValues);  
			
			$user_tracking->setValues(
					array(
						'userid'=>trim($userID),
						'egg_char_id' => trim($recordID),
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
        list($Id, $clutchsize_eggs_min,$clutchsize_eggs_max,$clutchsize_eggs_class,$clutchsize_method,$egg_diameter_without_jelly,
			$egg_diameter_with_jelly,$location,$details,$clutch_structure) = str_getcsv($row, $SEP,'"') ;  //explode(';', $row);
        
		$egg_deposition	= new Dataface_Record('egg_deposition', array());
         // We insert the default values for the record.
        $egg_deposition->setValues($defaultValues);  
		
		$egg_deposition->setValues(
				array(
					'id'=>trim($Id),
					'clutchsize_eggs_min'=>trim($clutchsize_eggs_min),
					'clutchsize_eggs_max'=>trim($clutchsize_eggs_max),
					'clutchsize_eggs_class'=>trim($clutchsize_eggs_class),
					'clutchsize_method'=>trim($clutchsize_method),
					'egg_diameter_without_jelly'=>trim($egg_diameter_without_jelly),
					'egg_diameter_with_jelly'=>trim($egg_diameter_with_jelly),
					'location'=>trim($location),
					'details'=>trim($details),
					'clutch_structure'=>trim($clutch_structure)
					)
			);
		$egg_deposition->save();
		
		
		
		
        $records[] = $egg_deposition ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>