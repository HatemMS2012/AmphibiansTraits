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
        list($Id, $clutchsize_eggs_min,$clutchsize_eggs_max,$clutchsize_eggs_class,$clutchsize_method,$egg_diameter_without_jelly,
			$egg_diameter_with_jelly,$location,$details,$clutch_structure) = explode(';', $row);
        
		$egg_deposition	= new Dataface_Record('egg_deposition', array());
         // We insert the default values for the record.
        $egg_deposition->setValues($defaultValues);  
		
		$egg_deposition->setValues(
				array(
					'id'=>trim($Id),
					'clutchsize_eggs_min'=>trim($clutchsize_eggs_min),
					'clutchsize_eggs_max'=>trim($clutchsize_eggs_max),
					'clutchsize_eggs_class'=>trim($clutchsize_eggs_class),
					'clutchsize_method'=>trim($clutchsize_method),
					'egg_diameter_without_jelly'=>trim($egg_diameter_without_jelly),
					'egg_diameter_with_jelly'=>trim($egg_diameter_with_jelly),
					'location'=>trim($location),
					'details'=>trim($details),
					'clutch_structure'=>trim($clutch_structure)
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