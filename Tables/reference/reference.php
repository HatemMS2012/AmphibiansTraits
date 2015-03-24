<?php
class tables_reference{
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
						'reference_id' => trim($recordID),
						'action'=> $action,
						)
				);
			$user_tracking->save();
	
	}
	
	function afterInsert(&$record){
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();
		$this->trackUser($record->strval('referenceID'),'INSERT',$user->val('UserName'));
	}
		
	//for user tracking information
	function afterUpdate(&$record){
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();
		$this->trackUser($record->strval('referenceID'),'UPDATE',$user->val('UserName'));
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
        list(	$ReferenceID,
				$PublicationType,
				$FullReference,
				$PrimaryTitle,
				$SecondaryTitle,
				$Pages,
				$PageStart,
				$PageEnd,
				$Volume,
				$Edition,
				$AuthorList,
				$DateCreated,
				$Language,
				$URL,
				$DOI,
				$LocalityOfPublisher,
				$referencecol,
				$EditorList
				) = str_getcsv($row, $SEP,'"') ; // explode(';', $row);
        
		$misc	= new Dataface_Record('reference');
         // We insert the default values for the record.
        $misc->setValues($defaultValues);  
		$misc->setValues(
				array(
					
					'ReferenceID'=>trim($ReferenceID),
					'PublicationType'=>trim($PublicationType),
					'FullReference'=>trim($FullReference),
					'PrimaryTitle'=>trim($PrimaryTitle),
					'SecondaryTitle'=>trim($SecondaryTitle),
					'Pages'=>trim($Pages),
					'PageStart'=>trim($PageStart),
					'PageEnd'=>trim($PageEnd),
					'Volume'=>trim($Volume),
					'Edition'=>trim($Edition),
					'AuthorList'=>trim($AuthorList),
					'DateCreated'=>trim($DateCreated),
					'Language'=>trim($Language),
					'URL'=>trim($URL),
					'DOI'=>trim($DOI),
					'LocalityOfPublisher'=>trim($LocalityOfPublisher),
					'referencecol'=>trim($referencecol),
					'EditorList'=>trim($EditorList)

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