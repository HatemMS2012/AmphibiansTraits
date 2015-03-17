<?php
class tables_distribution {


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
        list($Id, $Continent,$Range_size1,$Range_size2,$Range,$elevation_min,$elevation_max) =  str_getcsv($row, $SEP,'"') ; //explode(';', $row);
        
		$distribution = new Dataface_Record('distribution', array());
         // We insert the default values for the record.
        $distribution->setValues($defaultValues);  
		 $distribution->setValues(
            array(
					'id'=>trim($Id),
					'Continent'=>trim($Continent),
					'Range_size1'=>trim($Range_size1),
					'Range_size2'=>trim($Range_size2),
					'Range'=>trim($Range),
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