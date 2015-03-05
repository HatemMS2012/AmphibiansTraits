<?php
class tables_egg_deposition {

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
        list($Id, $Location,$Details) = explode(';', $row);
        
		$egg_deposition = new Dataface_Record('egg_deposition', array());
         // We insert the default values for the record.
        $egg_deposition->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $egg_deposition->setValues(
            array(
                'id'=>$Id,
                'location'=> trim($Location),
				'details'=>trim($Details)
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