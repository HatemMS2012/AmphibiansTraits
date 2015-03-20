<?php


class actions_export_eol  {
        
    
       function handle(&$params){
        $app =& Dataface_Application::getInstance();  // reference to Dataface_Application object
        $auth =& Dataface_AuthenticationTool::getInstance(); // reference to Dataface_Authentication object
        
        // Perform a custom SQL Query:
       $result = mysql_query("select * from taxonomic_identity");
	   
	   
	   //Create Taxa.txt
	   
	   
	   /* Traits -> EOL 
		id ->`Identifier`
	    Species-> `ScientificName`
		->`ParentTaxonID`
		->`Kingdom`
		->`Phylum`
		->`Class`
		Order -> `Order`
		Family ->`Family`
		Genus -> `Genus`
		->`TaxonRank`
	    ->`FurtherInformation`
		->`TaxonicStatus`
		->`NamePublishedIn`
		Tax_authority ->`ReferenceID`
		->`TaxonRemarks`
	   
	   */
	   $fp = fopen('EXPORTS/taxa.csv', 'w');
	   
	   fputcsv($fp,array('Identifier','ScientificName','Order','Family','Genus','ReferenceID'));
	   
	   //Identifier, Order, Family, Genus, 
	   while($row = mysql_fetch_assoc($result)){
		 
		  $fields=array($row['id'], $row['Species'],$row['Order'], $row['Family'],$row['Genus'],$row['Tax_authority']);
		
		   fputcsv($fp, $fields);
		}
		fclose($fp);
		echo 'Successfully exported to taxa.csv <br>';
		
		
		//Export Measurements
		/*`MeasurementID`, `OccurrenceID`, `MeasurementOfTaxon`, `AssociationID`, 
		`ParentMeasurementID`, `MeasurementType`, `MeasurementValue`, `Unit`, 
		`Accuracy`, `StatisticalMethod`, `DeterminedDate`, `DeterminedBy`, 
		`MeasurementMethod`, `Remarks`, `Source`, `Citation`, `Contributor`, `ReferenceID`
		*/
		
		
		
		$fp = fopen('EXPORTS/measurements.csv', 'w');
		$measurementID = 1 ;
		
	
		$header=array("MeasurementID", "OccurrenceID", "MeasurementOfTaxon", "AssociationID", 
					  "ParentMeasurementID", "MeasurementType", "MeasurementValue", "Unit", 
					  "Accuracy", "StatisticalMethod", "DeterminedDate", "DeterminedBy", 
					  "MeasurementMethod", "Remarks", "Source", "Citation", "Contributor", "ReferenceID");
					  
		fputcsv($fp, $header);
		
		//Body size		
		$result = mysql_query("select * from bodysize");
		while($row = mysql_fetch_assoc($result)){
		
			$id = $row['id'];
			$svl_male_min = $row['svl_male_min'];
			$svl_male_max = $row['svl_male_max'];
			$svl_male_mean = $row['svl_male_mean'];

			$svl_female_min = $row['svl_female_min'];
			$svl_female_max = $row['svl_female_max'];
			$svl_female_mean = $row['svl_female_mean'];
			
			if($svl_male_min!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "snout to vent length - male", $svl_male_min, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001113.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1);
			}
			if($svl_male_max!=null){
				$record2 = array($measurementID, $id, 'yes', "", "", "snout to vent length - male", $svl_male_max, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record2);
			}	
			if($svl_male_mean!=null){
				$record3 = array($measurementID, $id, 'yes', "", "", "snout to vent length - male", $svl_male_mean, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001109.rdf", "", "", "", "", "", "", "", "");			
				fputcsv($fp, $record3);
			}
			if($svl_female_min!=null){
				$record4 = array($measurementID, $id, 'yes', "", "", "snout to vent length - female", $svl_female_min, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001113.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record4);

			}
			if($svl_female_max!=null){
				$record5 = array($measurementID, $id, 'yes', "", "", "snout to vent length - female", $svl_female_max, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");			
				fputcsv($fp, $record5);
			}
				
			if($svl_female_mean!=null){
				$record6 = array($measurementID, $id, 'yes', "", "", "snout to vent length - female", $svl_female_mean, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001109.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record6);
			}
			
			$measurementID ++;
			
		}		
		fclose($fp);
		echo 'Successfully exported to measurements.csv <br>';
    }

}


