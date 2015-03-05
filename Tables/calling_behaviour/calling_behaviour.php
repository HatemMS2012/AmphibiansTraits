<?php
class tables_calling_behaviour {

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
        list($Id, $Call_perch_high,$Calling_behaviourcol, $To_water, $Chorusing, $Cover,
		$Rapids_or_waterfalls ) = explode(';', $row);
        
		$call_parameters = new Dataface_Record('calling_behaviour', array());
         // We insert the default values for the record.
        $call_parameters->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $call_parameters->setValues(
            array(
                'id'=>$Id,
                'call_perch_high'=> trim($Call_perch_high),
				'calling_behaviourcol'=>trim($Calling_behaviourcol),
				'to_water'=>trim($To_water),
				'chorusing'=>trim($Chorusing),
			    'cover'=>trim($Cover),
				'rapids_or_waterfalls'=>trim($Rapids_or_waterfalls)
							
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