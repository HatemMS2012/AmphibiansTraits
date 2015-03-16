<?php
class tables_bodysize {

function __import__csv(&$data, $defaultValues=array()){
    // build an array of Dataface_Record objects that are to be inserted based
    // on the CSV file data.
    $records = array();
    
    // first split the CSV file into an array of rows.
    $rows = explode("\n", $data);
	
	$i=0;
	
    foreach ( $rows as $row ){
		
		if($i == 0) {
				
			#echo $row;
			$i++;
		
		continue;
		}
		
        // We iterate through the rows and parse the fields so that they can be stored in a Dataface_Record object.
        list($Id, $svl_male_min,$svl_male_max,$svl_male_mean,$svl_female_min,$svl_female_max,$svl_female_mean,$sexual_dimorphism) = explode(';', $row);
        
		
		$bodysize = new Dataface_Record('bodysize', array());
         // We insert the default values for the record.
        $bodysize->setValues($defaultValues);  
		$bodysize->setValues(
            array(
					'id'=>trim($Id),
					'svl_male_min'=>trim($svl_male_min),
					'svl_male_max'=>trim($svl_male_max),
					'svl_male_mean'=>trim($svl_male_mean),
					'svl_female_min'=>trim($svl_female_min),
					'svl_female_max'=>trim($svl_female_max),
					'svl_female_mean'=>trim($svl_female_mean),
					'sexual_dimorphism'=>trim($sexual_dimorphism)    
					)
			);
		$bodysize->save();
		

	
		
		
        $records[] = $bodysize ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>