<?php
class tables_habitat_preference {
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
						'habitat_preference_id' => trim($recordID),
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
        list($Id, $macro,$micro) = str_getcsv($row, $SEP,'"') ; // explode(';', $row);
        
		$habitat_preference = new Dataface_Record('habitat_preference', array());
         // We insert the default values for the record.
        $habitat_preference->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $habitat_preference->setValues(
            array(
                'id'=>trim($Id),
                'macro'=> trim($macro),
				'micro'=>trim($micro)
				)
            );	
		$habitat_preference->save();
		
		
		
		
        $records[] = $habitat_preference ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>