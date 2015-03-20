<?php
class tables_iucn_threat_status {
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
						'iucn_threat_status_id' => trim($recordID),
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
		if (strpos($row , $SEP) ===  false) {
			continue;
		}
		if($i == 0) {
				
			echo $row;
			$i++;
		
		continue;
		}
		
        // We iterate through the rows and parse the fields so that they can be stored in a Dataface_Record object.
        list($Id, $threat_category,$population_decline) = str_getcsv($row, $SEP,'"') ; //  explode(';', $row);
        
		$iucn_threat_status = new Dataface_Record('iucn_threat_status', array());
         // We insert the default values for the record.
        $iucn_threat_status->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $iucn_threat_status->setValues(
            array(
                'id'=>$Id,
                'threat_category'=> trim($threat_category),
				'population_decline'=>trim($population_decline),
				
                 )
            );	
		$iucn_threat_status->save();
		
		
		
		
        $records[] = $iucn_threat_status ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>