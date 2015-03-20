<?php
class tables_bodysize {



//for user tracking information
	function trackUser($recordID,$action,$userID){
		//for user tracking information
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();		
		$record	= new Dataface_Record('user_tracking', array());
			 // We insert the default values for the record.
			 //$record->setValues($defaultValues);  
			
			$record->setValues(
					array(
						'userid'=>trim($userID),
						'bodysize_id' => trim($recordID),
						'action'=> $action,
						)
				);
			$record->save();
	
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
				
			#echo $row;
			$i++;
		
		continue;
		}
		
        // We iterate through the rows and parse the fields so that they can be stored in a Dataface_Record object.
        list($Id, $svl_male_min,$svl_male_max,$svl_male_mean,$svl_female_min,$svl_female_max,$svl_female_mean,$sexual_dimorphism) = str_getcsv($row, $SEP,'"') ; //explode(';', $row);
        
		
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



	/**
	 * An import filter to import excel spreadsheets.  
	 *
	 * @param string &$data The raw XML data to be imported .. needs to be parsed.
	 * @param $defaultValues Associative array of default values that should be placed
	 *         in all imported records.  This allows users to specify default values
	 *         to be placed into certain fields when the import the spreadsheet.
	 * @returns array(Dataface_Record)

	function __import__excel_spreadsheet(&$data, $defaultValues=array()){
		$records = array();  // the array that will hold the records to be imported.
            
        // First let's import the excel parser and parse the data into a 
        // data structure so we can work with it.
        import('include/excelxmlparser/ExcelXMLParser.php');
        $tempdir = DATAFACE_SITE_PATH.'/templates_c';
        $tmpnam = tempnam($tempdir, 'dataface-librarian-excell-import');
        $handle = fopen($tmpnam,'w');
        fwrite($handle,$data);
        fclose($handle);

        // Now that we have parsed the data, we can work with it

        $ExcelXMLParser = new ExcelXMLParser(); 
        $app =& Dataface_Application::getInstance();

     
        $result = $ExcelXMLParser->OpenWorkbook($tmpnam,array());

        if ( ExcelXMLError::isError($result) ) return array();
		
		
		$ws =& $ExcelXMLParser->Workbook->getFirstWorksheet();
		
		 // Data doesn't start until the 2th row
		$ws->Table->getFirstRow();
		
		//Iterate through all the rows
		while ( $row = $ws->Table->getNextRow() ){
		 
			// Now for each row of the spreadsheet we will create a new record.
            $record = new Dataface_Record('bodysize', array());
			
			// Start out with the default values and build from there.
            $record->setValues($defaultValues);
			
			// This is a check to make sure that there is a value in the first cell.. if not, we skip this row.
			if ( !$row->getCell(0)->getValue() ) continue;
            
			$record->setValues(
                    array(
					
					'id'=>trim($Id),
					'svl_male_min'=>$row->getCell(0)->getValue(),
					'svl_male_max'=>$row->getCell(1)->getValue(),
					'svl_male_mean'=>$row->getCell(2)->getValue(),
					'svl_female_min'=>$row->getCell(3)->getValue(),
					'svl_female_max'=>$row->getCell(4)->getValue(),
					'svl_female_mean'=>$row->getCell(5)->getValue(),
					'sexual_dimorphism'=>$row->getCell(6)->getValue()   
					                   
                    )
            );	
			
			// Now that we have populated our record, we will add it to the 
            // array of records to be inserted.
            $records[] =&$record;
                
            unset($record);  // necessary to prevent PHP from writing over the last record
            
		 
		 }
		 
		// Return our array of records and let Xataface handle the rest.
        return $records;
		
		
		
	}	 */
}
?>