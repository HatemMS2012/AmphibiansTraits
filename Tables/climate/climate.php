<?php
class tables_climate {
//for user tracking information
	function trackUser($recordID,$action,$userID){
		//for user tracking information
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();		
		$user_tracking	= new Dataface_Record('user_tracking', array());
			 // We insert the default values for the record.
			//$user_tracking->setValues($defaultValues);  
			
			$user_tracking->setValues(
					array(
						'userid'=>trim($userID),
						'climate_id' => trim($recordID),
						'action'=> $action,
						)
				);
			$user_tracking->save();
	
	}
	
	function afterInsert(&$record){
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();
		$this->trackUser($record->strval('id'),'INSERT',$user->val('UserName'));
	}
		
	//for user tracking information
	function afterUpdate(&$record){
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();
		$this->trackUser($record->strval('id'),'UPDATE',$user->val('UserName'));
	}
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
        list($id,
				$min_maximum_precipitation,
				$max_maximum_precipitation,
				$mean_maximum_precipitation,
				$sd_maximum_precipitation,
				$range_maximum_precipitation,
				$sum_maximum_precipitation,
				$min_minimum_precipitation,
				$max_minimum_precipitation,
				$mean_minimum_precipitation,
				$sd_minimum_precipitation,
				$range_minimum_precipitation,
				$sum_minimum_precipitation,
				$min_standard_deviation_precipitation,
				$max_standard_deviation_precipitation,
				$mean_standard_deviation_precipitation,
				$sd_standard_deviation_precipitation,
				$range_standard_deviation_precipitation,
				$sum_standard_deviation_precipitation,
				$min_sum_of_precipitation,
				$max_sum_of_precipitation,
				$mean_sum_of_precipitation,
				$sd_sum_of_precipitation,
				$range_sum_of_precipitation,
				$sum_sum_of_precipitation,
				$min_maximum_of_highest_temperatures,
				$max_maximum_of_highest_temperatures,
				$mean_maximum_of_highest_temperatures,
				$sd_maximum_of_highest_temperatures,
				$range_maximum_of_highest_temperatures,
				$min_minimum_of_highest_temperatures,
				$max_minimum_of_highest_temperatures,
				$mean_minimum_of_highest_temperatures,
				$sd_minimum_of_highest_temperatures,
				$range_minimum_of_highest_temperatures,
				$min_standard_deviation_of_highest_temperatures,
				$max_standard_deviation_of_highest_temperatures,
				$mean_standard_deviation_of_highest_temperatures,
				$sd_standard_deviation_of_highest_temperatures,
				$range_standard_deviation_of_highest_temperatures,
				$mean_maximum_of_lowest_temperatures,
				$sd_maximum_of_lowest_temperatures,
				$range_maximum_of_lowest_temperatures,
				$min_maximum_of_lowest_temperatures,
				$max_maximum_of_lowest_temperatures,
				$min_minimum_of_lowest_temperatures,
				$mean_minimum_of_lowest_temperatures,
				$sd_minimum_of_lowest_temperatures,
				$range_minimum_of_lowest_temperatures,
				$min_standard_deviation_of_lowest_temperatures,
				$max_standard_deviation_of_lowest_temperatures,
				$mean_standard_deviation_of_lowest_temperatures,
				$sd_standard_deviation_of_lowest_temperatures,
				$range_standard_deviation_of_lowest_temperatures
				) = str_getcsv($row, $SEP,'"') ; // explode(';', $row);
        
		$misc	= new Dataface_Record('climate');
         // We insert the default values for the record.
        $misc->setValues($defaultValues);  
		$misc->setValues(
				array(
					'id'=>trim($id),
						'min_maximum_precipitation'=>trim($min_maximum_precipitation),
						'max_maximum_precipitation'=>trim($max_maximum_precipitation),
						'mean_maximum_precipitation'=>trim($mean_maximum_precipitation),
						'sd_maximum_precipitation'=>trim($sd_maximum_precipitation),
						'range_maximum_precipitation'=>trim($range_maximum_precipitation),
						'sum_maximum_precipitation'=>trim($sum_maximum_precipitation),
						'min_minimum_precipitation'=>trim($min_minimum_precipitation),
						'max_minimum_precipitation'=>trim($max_minimum_precipitation),
						'mean_minimum_precipitation'=>trim($mean_minimum_precipitation),
						'sd_minimum_precipitation'=>trim($sd_minimum_precipitation),
						'range_minimum_precipitation'=>trim($range_minimum_precipitation),
						'sum_minimum_precipitation'=>trim($sum_minimum_precipitation),
						'min_standard_deviation_precipitation'=>trim($min_standard_deviation_precipitation),
						'max_standard_deviation_precipitation'=>trim($max_standard_deviation_precipitation),
						'mean_standard_deviation_precipitation'=>trim($mean_standard_deviation_precipitation),
						'sd_standard_deviation_precipitation'=>trim($sd_standard_deviation_precipitation),
						'range_standard_deviation_precipitation'=>trim($range_standard_deviation_precipitation),
						'sum_standard_deviation_precipitation'=>trim($sum_standard_deviation_precipitation),
						'min_sum_of_precipitation'=>trim($min_sum_of_precipitation),
						'max_sum_of_precipitation'=>trim($max_sum_of_precipitation),
						'mean_sum_of_precipitation'=>trim($mean_sum_of_precipitation),
						'sd_sum_of_precipitation'=>trim($sd_sum_of_precipitation),
						'range_sum_of_precipitation'=>trim($range_sum_of_precipitation),
						'sum_sum_of_precipitation'=>trim($sum_sum_of_precipitation),
						'min_maximum_of_highest_temperatures'=>trim($min_maximum_of_highest_temperatures),
						'max_maximum_of_highest_temperatures'=>trim($max_maximum_of_highest_temperatures),
						'mean_maximum_of_highest_temperatures'=>trim($mean_maximum_of_highest_temperatures),
						'sd_maximum_of_highest_temperatures'=>trim($sd_maximum_of_highest_temperatures),
						'range_maximum_of_highest_temperatures'=>trim($range_maximum_of_highest_temperatures),
						'min_minimum_of_highest_temperatures'=>trim($min_minimum_of_highest_temperatures),
						'max_minimum_of_highest_temperatures'=>trim($max_minimum_of_highest_temperatures),
						'mean_minimum_of_highest_temperatures'=>trim($mean_minimum_of_highest_temperatures),
						'sd_minimum_of_highest_temperatures'=>trim($sd_minimum_of_highest_temperatures),
						'range_minimum_of_highest_temperatures'=>trim($range_minimum_of_highest_temperatures),
						'min_standard_deviation_of_highest_temperatures'=>trim($min_standard_deviation_of_highest_temperatures),
						'max_standard_deviation_of_highest_temperatures'=>trim($max_standard_deviation_of_highest_temperatures),
						'mean_standard_deviation_of_highest_temperatures'=>trim($mean_standard_deviation_of_highest_temperatures),
						'sd_standard_deviation_of_highest_temperatures'=>trim($sd_standard_deviation_of_highest_temperatures),
						'range_standard_deviation_of_highest_temperatures'=>trim($range_standard_deviation_of_highest_temperatures),
						'mean_maximum_of_lowest_temperatures'=>trim($mean_maximum_of_lowest_temperatures),
						'sd_maximum_of_lowest_temperatures'=>trim($sd_maximum_of_lowest_temperatures),
						'range_maximum_of_lowest_temperatures'=>trim($range_maximum_of_lowest_temperatures),
						'min_maximum_of_lowest_temperatures'=>trim($min_maximum_of_lowest_temperatures),
						'max_maximum_of_lowest_temperatures'=>trim($max_maximum_of_lowest_temperatures),
						'min_minimum_of_lowest_temperatures'=>trim($min_minimum_of_lowest_temperatures),
						'mean_minimum_of_lowest_temperatures'=>trim($mean_minimum_of_lowest_temperatures),
						'sd_minimum_of_lowest_temperatures'=>trim($sd_minimum_of_lowest_temperatures),
						'range_minimum_of_lowest_temperatures'=>trim($range_minimum_of_lowest_temperatures),
						'min_standard_deviation_of_lowest_temperatures'=>trim($min_standard_deviation_of_lowest_temperatures),
						'max_standard_deviation_of_lowest_temperatures'=>trim($max_standard_deviation_of_lowest_temperatures),
						'mean_standard_deviation_of_lowest_temperatures'=>trim($mean_standard_deviation_of_lowest_temperatures),
						'sd_standard_deviation_of_lowest_temperatures'=>trim($sd_standard_deviation_of_lowest_temperatures),
						'range_standard_deviation_of_lowest_temperatures'=>trim($range_standard_deviation_of_lowest_temperatures)

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