<?php
class tables_distribution {


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
        list($Id, $continent,$range_size_1, $range_size_2, $range, $elevation_min,$elevation_max) = explode(';', $row);
        
		$distribution = new Dataface_Record('distribution', array());
         // We insert the default values for the record.
        $distribution->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $distribution->setValues(
            array(
                'id'=>$Id,
                'Continent'=> trim($continent),
				'Range_size1'=>trim($range_size_1),
				'Range_size2'=>trim($range_size_2),
			    'Range'=>trim($range),
				'elevation_min'=>trim($elevation_min),
				'elevation_max'=>trim($elevation_max)
				
                 )
            );	
		$distribution->save();
		
		
		
		
        $records[] = $distribution ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>