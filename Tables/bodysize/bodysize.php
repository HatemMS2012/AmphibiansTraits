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
        list($Id, $svlmalemin, $svlmalemax, $svlmalemean, $svlfemalemin, $svlfemalemax, $svlfemalemean, $sexdimorphism) = explode(';', $row);
        
		$bodySizeRecord = new Dataface_Record('bodysize', array());
         // We insert the default values for the record.
        $bodySizeRecord->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
         $bodySizeRecord->setValues(
            array(
                'id'=>$Id,
                'svl_male_min'=>$svlmalemin,
                'svl_male_max'=> $svlmalemax,
				'svl_male_mean'=>$svlmalemean,
				'svl_female_min'=>$svlfemalemin,
				'svl_female_max'=>$svlfemalemax,
				'svl_female_mean'=>$svlfemalemean,
				'sexual_dimorphism'=>$sexdimorphism
                 )
            );	
		$bodySizeRecord->save();
		
		
		
		
        $records[] = $bodySizeRecord ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>