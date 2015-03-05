<?php
class tables_misc {

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
        list($Id, $daily_activity, $developement, $larval_habitat, $tadpoles_guild, $maternal_care, $maternal_care_details, $abundance, $stratigraphic_range, $f_environment_type, $holotype) = explode(';', $row);
        
		$misc = new Dataface_Record('misc', array());
         // We insert the default values for the record.
        $misc->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $misc->setValues(
            array(
                'id'=>$Id,
                'daily_activity'=> trim($daily_activity),
				'developement'=>trim($developement),
				'larval_habitat'=>trim($larval_habitat),
				'tadpoles_guild'=>trim($tadpoles_guild),
				'maternal_care'=>trim($maternal_care),
				'maternal_care_details'=>trim($maternal_care_details),
				'abundance'=>trim($abundance),
				'stratigraphic_range'=>trim($stratigraphic_range),
				'f_environment_type'=>trim($f_environment_type),
				'holotype'=>trim($holotype)
				
                 )
            );	
		$misc->save();
		
		
		
		
        $records[] = $misc ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>