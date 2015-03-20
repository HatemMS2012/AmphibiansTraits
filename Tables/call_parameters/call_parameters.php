<?php
class tables_call_parameters {
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
						'call_parameters_id' => trim($recordID),
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
        list($Id, $Fundamental_frequency,$Dominant_frequency, $Pulserate, $Call_duration, $Note_duration,
		$Call_guild,$Min_frequency,$Max_frequency,$Dominant_frequency_modulation ) = str_getcsv($row, $SEP,'"') ; //explode(';', $row);
        
		$call_parameters = new Dataface_Record('call_parameters', array());
         // We insert the default values for the record.
        $call_parameters->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $call_parameters->setValues(
            array(
                'id'=>$Id,
                'fundamental_frequency'=> trim($Fundamental_frequency),
				'dominant_frequency'=>trim($Dominant_frequency),
				'pulserate'=>trim($Pulserate),
				'call_duration'=>trim($Call_duration),
			    'note_duration'=>trim($Note_duration),
				'call_guild'=>trim($Call_guild),
				'min_frequency'=>trim($Min_frequency),
				'max_frequency'=>trim($Max_frequency),
				'dominant_frequency_modulation'=>trim($Dominant_frequency_modulation)
				
                 )
            );	
		$call_parameters->save();
		
		
		
		
        $records[] = $call_parameters ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>