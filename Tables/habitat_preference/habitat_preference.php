<?php
class tables_habitat_preference {

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
        list($Id, $macro,$micro) = explode(';', $row);
        
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