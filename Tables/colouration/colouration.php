<?php
class tables_colouration {

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
				
			#echo $row;
			$i++;
		
		continue;
		}
		
        // We iterate through the rows and parse the fields so that they can be stored in a Dataface_Record object.
        list($Id, $Pattern,$Colour, $Warty, $Uni_vs_polymorph) = str_getcsv($row, $SEP,'"') ; //explode(';', $row);
        
		$coloration = new Dataface_Record('colouration', array());
         // We insert the default values for the record.
        $coloration->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $coloration->setValues(
            array(
                'id'=>trim($Id),
                'pattern'=>trim($Pattern),
				'colour'=>trim($Colour),
				'warty'=>trim($Warty),
			    'uni_vs_polymorph'=>trim($Uni_vs_polymorph)
				
                 )
            );	
		$coloration->save();
		
		
		
		
        $records[] = $coloration ; 
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>