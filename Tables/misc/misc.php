<?php
class tables_misc {

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
        list($Id, $daily_activity,$reproductive_mode,$tadpole_habitat, $tadpole_feeding, $maternal_care, $maternal_care_details,
		$abundance,$stratigraphic_range, $f_environment_type,$diet,$climate,$holotype) = str_getcsv($row, $SEP,'"') ; // explode(';', $row);
        
		$misc	= new Dataface_Record('misc');
         // We insert the default values for the record.
        $misc->setValues($defaultValues);  
		$misc->setValues(
				array(
					'id'=>trim($Id),
					'daily_activity'=>trim($daily_activity),
					'reproductive_mode'=>trim($reproductive_mode),
					'tadpole_habitat'=>trim($tadpole_habitat),
					'tadpole_feeding'=>trim($tadpole_feeding),
					'maternal_care'=>trim($maternal_care),
					'maternal_care_details'=>trim($maternal_care_details),
					'abundance'=>trim($abundance),
					'stratigraphic_range'=> trim($stratigraphic_range),
					'f_environment_type'=>trim($f_environment_type),
					'diet'=>trim($diet),
					'climate'=>trim($climate),
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