<?php
import('Dataface/SkinTool.php');
import('Dataface/RecordGrid.php');

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
	   $fp = fopen('EXPORTS/taxa.txt', 'w');
	   
	   fputcsv($fp,array('Identifier','ScientificName','ParentTaxonID','Kingdom','Phylum','Class','Order','Family','Genus','TaxonRank','FurtherInformation',
						 'TaxonicStatus','NamePublishedIn','ReferenceID','TaxonRemarks'),"\t");
						 
		//Export references 
		//`ReferenceID`, `PublicationType`, `FullReference`, `PrimaryTitle`, `SecondaryTitle`, 
		//`Pages`, `PageStart`, `PageEnd`, `Volume`, `Edition`, `AuthorList`, `DateCreated`, 
		//`Language`, `URL`, `DOI`, `LocalityOfPublisher`, `referencecol`, `EditorList`
		$fpRef = fopen('EXPORTS/references.txt', 'w');
		fputcsv($fpRef,array('ReferenceID', 'PublicationType', 'FullReference', 'PrimaryTitle', 'SecondaryTitle','Pages', 
						  'PageStart', 'PageEnd', 'Volume', 'Edition', 'AuthorList', 'DateCreated', 
						   'Language', 'URL', 'DOI', 'LocalityOfPublisher', 'EditorList'),"\t");				 
	   
	   
	   while($row = mysql_fetch_assoc($result)){
		 	

			$fields=array($row['id'], $row['Species'],'','','','',$row['Order'], $row['Family'],$row['Genus'],'','','','',$row['Tax_authority'],'');
		
			fputcsv($fp, $fields,"\t");
			
			$fieldsRef=array($row['Tax_authority'], '', $row['Tax_authority'], '', '','', 
						     '', '', '', '', '', '', 
						     '', '', '', '', '');
		
			fputcsv($fpRef, $fieldsRef,"\t");
			
			
		}
		fclose($fp);
		fclose($fpRef);
		
		
		
		//Export occurrences 
		//`OccurrenceID`, `TaxonID`, `Sex`, `LifeStage`, `Reproductive`, `Behavior`, `Establishement`, 
		//`Remarks`, `CountOfIndividuals`, `Preparations`, `FieldNotes`, `SamplingProtocol`, `SamplingEffort`, 
		//`DecimalLatitude`, `DecimalLongitude`, `Locality`, `IdentifiedBy`, `DateIdentified`, `EventDate`, `EventID`
		
	   $fp = fopen('EXPORTS/occurrences.txt', 'w');
	   
	   fputcsv($fp,array('OccurrenceID', 'TaxonID', 'Sex', 'LifeStage', 'Reproductive', 'Behaviour', 'Establishment', 
						  'Remarks', 'CountOfIndividuals', 'Preparations', 'FieldNotes', 'SamplingProtocol', 'SamplingEffort', 
						  'DecimalLatitude', 'DecimalLongitude', 'Locality', 'IdentifiedBy', 'DateIdentified', 'EventDate', 'EventID'),"\t");
	   
	   //Identifier, Order, Family, Genus, 
	   
	   $result = mysql_query("select * from distribution");
	   while($row = mysql_fetch_assoc($result)){
		 	

			$fields=array($row['id'],$row['id'], '', '', '', '', '','', '', '', '', '', '', 
						  '', '', $row['Continent'], '', '', '', '');
		
			fputcsv($fp, $fields,"\t");
		}
		fclose($fp);
		
		//Export Measurements
		/*`MeasurementID`, `OccurrenceID`, `MeasurementOfTaxon`, `AssociationID`, 
		`ParentMeasurementID`, `MeasurementType`, `MeasurementValue`, `Unit`, 
		`Accuracy`, `StatisticalMethod`, `DeterminedDate`, `DeterminedBy`, 
		`MeasurementMethod`, `Remarks`, `Source`, `Citation`, `Contributor`, `ReferenceID`
		*/
		
		
		
		$fp = fopen('EXPORTS/measurements or facts.txt', 'w');
		$measurementID = 1 ;
		
	
		$header=array("MeasurementID", "OccurrenceID", "MeasurementOfTaxon", "AssociationID", 
					  "ParentMeasurementID", "MeasurementType", "MeasurementValue", "Unit", 
					  "Accuracy", "StatisticalMethod", "DeterminedDate", "DeterminedBy", 
					  "MeasurementMethod", "Remarks", "Source", "Citation", "Contributor", "ReferenceID");
					  
		fputcsv($fp, $header,"\t");
		
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
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($svl_male_max!=null){
				$record2 = array($measurementID, $id, 'yes', "", "", "snout to vent length - male", $svl_male_max, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record2,"\t");
				$measurementID ++;
			}	
			if($svl_male_mean!=null){
				$record3 = array($measurementID, $id, 'yes', "", "", "snout to vent length - male", $svl_male_mean, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001109.rdf", "", "", "", "", "", "", "", "");			
				fputcsv($fp, $record3,"\t");
				$measurementID ++;
			}
			if($svl_female_min!=null){
				$record4 = array($measurementID, $id, 'yes', "", "", "snout to vent length - female", $svl_female_min, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001113.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record4,"\t");
				$measurementID ++;

			}
			if($svl_female_max!=null){
				$record5 = array($measurementID, $id, 'yes', "", "", "snout to vent length - female", $svl_female_max, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");			
				fputcsv($fp, $record5,"\t");
				$measurementID ++;
			}
				
			if($svl_female_mean!=null){
				$record6 = array($measurementID, $id, 'yes', "", "", "snout to vent length - female", $svl_female_mean, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001109.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record6,"\t");
				$measurementID ++;
			}
			
			
		}		
		
		//colouration measurement
		//`id`, `pattern`, `colour`, `warty`, `uni_vs_polymorph`
		$result = mysql_query("select * from colouration");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$pattern = $row['pattern'];
			$colour = $row['colour'];
			$warty = $row['warty'];
			$uni_vs_polymorph = $row['uni_vs_polymorph'];
			
			if($pattern!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "colouration: pattern", $pattern, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($colour!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "colouration: colour", $colour, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($warty!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "colouration: warty", $warty, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($uni_vs_polymorph!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "colouration: uni vs. polymorph", $uni_vs_polymorph, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
		}
		
		//Forelimb characteristics 
		//`id`, `forelimb_length`, `humerus_length_min`, `humerus_length_max`, 
		//`hand_length`, `first_finger_length`, `second_finger_length`, `third_finger_length`, 
		//`forth_finger_length`, `finger_disk`, `dermal_fringe_along_finger`, `lateral_dermal_fringe_on_finger`, 
		//`webbing_on_finger`, `inner_palmar_tubercle`, `outer_plmar_tubercle`, `supernumerary_tubercle_on_finger`
		
		$result = mysql_query("select * from forlimb_characters");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$forelimb_length = $row['forelimb_length'];
			$humerus_length_min = $row['humerus_length_min'];
			$humerus_length_max = $row['humerus_length_max'];
			$hand_length = $row['hand_length'];
			$first_finger_length = $row['first_finger_length'];
			$second_finger_length = $row['second_finger_length'];
			$third_finger_length = $row['third_finger_length'];
			$forth_finger_length = $row['forth_finger_length'];
			$finger_disk = $row['finger_disk'];
			$dermal_fringe_along_finger = $row['dermal_fringe_along_finger'];
			$lateral_dermal_fringe_on_finger = $row['lateral_dermal_fringe_on_finger'];
			$webbing_on_finger = $row['webbing_on_finger'];
			$inner_palmar_tubercle = $row['inner_palmar_tubercle'];
			$outer_plmar_tubercle = $row['outer_plmar_tubercle'];
			$supernumerary_tubercle_on_finger = $row['supernumerary_tubercle_on_finger'];
			
			if($forelimb_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Forelimb length", $forelimb_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($humerus_length_min!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Humerus length", $humerus_length_min, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001113.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($humerus_length_max!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Humerus length", $humerus_length_max, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($hand_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Hand length", $hand_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($first_finger_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "First finger length", $first_finger_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($second_finger_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Second finger length", $second_finger_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($third_finger_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Third finger length", $third_finger_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($forth_finger_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Fourth finger length", $forth_finger_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($finger_disk!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Finger disk", $finger_disk, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($dermal_fringe_along_finger!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Dermal fringe along finger", $dermal_fringe_along_finger, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($lateral_dermal_fringe_on_finger!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Lateral dermal fringe on finger", $lateral_dermal_fringe_on_finger, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($webbing_on_finger!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Webbing on finger", $webbing_on_finger, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($inner_palmar_tubercle!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Inner palmar tubercle", $inner_palmar_tubercle, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($outer_plmar_tubercle!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Outer palmar tubercle", $outer_plmar_tubercle, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($supernumerary_tubercle_on_finger!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Supernumerary tubercle on finger", $supernumerary_tubercle_on_finger, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
		}
		
		
		//Hindlimb characteristics 
		//`femur_length_min`, `femur_length_max`, `tibia_shank_length`, `foot_length`, `total_foot_length`, 
		//`first_toe_length`, `second_toe_length`, `third_toe_length`, `fourth_toe_length`, `fifth_toe_length`, `webbing_on_toe`, 
		//`dermal_fringe_along_toe`, `lateral_dermal_fringe_on_toe`, `supernumerary_tubercle_on_toes`, 
		//`inner_metatarsal_tubercle`, `outer_metatarsal_tubercle`
		
		$result = mysql_query("select * from hindlimb_characters");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$femur_length_min = $row['femur_length_min'];
			$femur_length_max = $row['femur_length_max'];
			$tibia_shank_length = $row['tibia_shank_length'];
			$foot_length = $row['foot_length'];
			$total_foot_length = $row['total_foot_length'];
			$first_toe_length = $row['first_toe_length'];
			$second_toe_length = $row['second_toe_length'];
			$third_toe_length = $row['third_toe_length'];
			$fourth_toe_length = $row['fourth_toe_length'];
			$fifth_toe_length = $row['fifth_toe_length'];
			$webbing_on_toe = $row['webbing_on_toe'];
			$dermal_fringe_along_toe = $row['dermal_fringe_along_toe'];
			$lateral_dermal_fringe_on_toe = $row['lateral_dermal_fringe_on_toe'];
			$supernumerary_tubercle_on_toes = $row['supernumerary_tubercle_on_toes'];
			$inner_metatarsal_tubercle = $row['inner_metatarsal_tubercle'];
			$outer_metatarsal_tubercle = $row['outer_metatarsal_tubercle'];
		
			if($femur_length_min!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Femur length", $femur_length_min, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001113.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($femur_length_max!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Femur length", $femur_length_max, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
		
			if($tibia_shank_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Tibia shank length", $tibia_shank_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			if($foot_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Foot length", $foot_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			if($total_foot_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Total foot length", $total_foot_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			if($first_toe_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "First toe length", $first_toe_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($second_toe_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Second toe length", $second_toe_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($third_toe_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Third toe length", $third_toe_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($fourth_toe_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Fourth toe length", $fourth_toe_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($fifth_toe_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Fifth toe length", $fifth_toe_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($webbing_on_toe!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Webbing on toe", $webbing_on_toe, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($dermal_fringe_along_toe!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Dermal fringe along toe", $dermal_fringe_along_toe, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($lateral_dermal_fringe_on_toe!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Lateral dermal fringe on toe", $lateral_dermal_fringe_on_toe, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($supernumerary_tubercle_on_toes!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Supernumerary tubercle on toes", $supernumerary_tubercle_on_toes, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($inner_metatarsal_tubercle!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Inner metatarsal tubercle", $inner_metatarsal_tubercle, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($outer_metatarsal_tubercle!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Outer metatarsal tubercle", $outer_metatarsal_tubercle, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
		}
		
		
		//Head characteristics
		//`head_length`, `head_width`, `snout_length`, `internarial_distance`, 
		//`nostril_to_snout_distance`, `eye_to_nostril`, `maximum_tympanum_diameter`, 
		//`eye_length`, `distance_between_front_of_eyes`, `distance_between_behind_of_eyes`, 
		//`interorbital_distance`, `snout_shape_lateral`, `snout_shape_dorsal`, `interorbital_shape`, 
		//`pineal_oscilus`, `loreal_region_shape`, `canthus_rostralis`, `nostril_shape`, `tympanum_shape`
		
		$result = mysql_query("select * from head_characters");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$head_length = $row['head_length'];
			$head_width = $row['head_width'];
			$snout_length = $row['snout_length'];
			$internarial_distance = $row['internarial_distance'];
			$nostril_to_snout_distance = $row['nostril_to_snout_distance'];
			$eye_to_nostril = $row['eye_to_nostril'];
			$maximum_tympanum_diameter = $row['maximum_tympanum_diameter'];
			$eye_length = $row['eye_length'];
			$distance_between_front_of_eyes = $row['distance_between_front_of_eyes'];
			$distance_between_behind_of_eyes = $row['distance_between_behind_of_eyes'];
			$interorbital_distance = $row['interorbital_distance'];
			$snout_shape_lateral = $row['snout_shape_lateral'];
			$snout_shape_dorsal = $row['snout_shape_dorsal'];
			$interorbital_shape = $row['interorbital_shape'];
			$pineal_oscilus = $row['pineal_oscilus'];
			$loreal_region_shape = $row['loreal_region_shape'];
			$canthus_rostralis = $row['canthus_rostralis'];
			$nostril_shape = $row['nostril_shape'];
			$tympanum_shape = $row['tympanum_shape'];
			
			if($head_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Head length", $head_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($head_width!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Head width", $head_width, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($snout_length!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Snout length", $snout_length, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($internarial_distance!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Internarial distance", $internarial_distance, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($nostril_to_snout_distance!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Nostril to snout distance", $nostril_to_snout_distance, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($eye_to_nostril!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Eye to nostril", $eye_to_nostril, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($maximum_tympanum_diameter!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Tympanum diameter", $internarial_distance, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($distance_between_front_of_eyes!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Distance between front of_eyes", $distance_between_front_of_eyes, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($distance_between_behind_of_eyes!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Distance between behind of_eyes", $distance_between_behind_of_eyes, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($interorbital_distance!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Interorbital distance", $interorbital_distance, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($snout_shape_lateral!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Snout shape lateral", $snout_shape_lateral, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($snout_shape_dorsal!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Snout shape dorsal", $snout_shape_dorsal, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($interorbital_shape!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Interorbital shape", $interorbital_shape, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($pineal_oscilus!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Pineal oscilus", $pineal_oscilus, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($loreal_region_shape!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Loreal region shape", $loreal_region_shape, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($canthus_rostralis!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Canthus rostralis", $canthus_rostralis, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($nostril_shape!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Nostril shape", $nostril_shape, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($tympanum_shape!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Tympanum shape", $tympanum_shape, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
		
		}
		//vocal sac tympanum
		//`vocal_sac_manifestation`, `vocal_sac_form`, `vocal_sac_distensibility`, `tympanum_covering`, `tympanum_eye_ration`
		$result = mysql_query("select * from vocal_sac_tympanum");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$vocal_sac_manifestation = $row['vocal_sac_manifestation'];
			$vocal_sac_form = $row['vocal_sac_form'];
			$vocal_sac_distensibility = $row['vocal_sac_distensibility'];
			$tympanum_covering = $row['tympanum_covering'];
			$tympanum_eye_ration = $row['tympanum_eye_ration'];
			
			if($vocal_sac_manifestation!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Vocal sac manifestation", $vocal_sac_manifestation, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($vocal_sac_form!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Vocal sac form", $vocal_sac_form, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($vocal_sac_distensibility!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Vocal sac distensibility", $vocal_sac_distensibility, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($tympanum_covering!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Tympanum covering", $tympanum_covering, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($tympanum_eye_ration!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Tympanum eye ration", $tympanum_eye_ration, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			
		}
		//Egg Characteristics
		//`clutchsize_eggs_min`, `clutchsize_eggs_max`, `clutchsize_eggs_class`, `clutchsize_method`, 
		//`egg_diameter_without_jelly`, `egg_diameter_with_jelly`, `location`, `details`, `clutch_structure`
		$result = mysql_query("select * from egg_deposition");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$clutchsize_eggs_min = $row['clutchsize_eggs_min'];
			$clutchsize_eggs_max = $row['clutchsize_eggs_max'];
			$clutchsize_eggs_class = $row['clutchsize_eggs_class'];
			$clutchsize_method = $row['clutchsize_method'];
			$egg_diameter_without_jelly = $row['egg_diameter_without_jelly'];
			$egg_diameter_with_jelly = $row['egg_diameter_with_jelly'];
			$location = $row['location'];
			$details = $row['details'];
			$clutch_structure = $row['clutch_structure'];
		
			if($clutchsize_eggs_min!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg clutchsize", $clutchsize_eggs_min, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001113.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($clutchsize_eggs_max!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg clutchsize", $clutchsize_eggs_max, "http://purl.obolibrary.org/obo/UO_0000016", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($clutchsize_eggs_class!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg clutchsize class", $clutchsize_eggs_class, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($clutchsize_method!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg clutchsize method", $clutchsize_method, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($egg_diameter_without_jelly!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg diameter without jelly", $egg_diameter_without_jelly, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($egg_diameter_with_jelly!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg diameter with jelly", $egg_diameter_with_jelly, "http://purl.obolibrary.org/obo/UO_0000016", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($location!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg deposition location", $location, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($details!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg deposition details", $details, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($clutch_structure!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Egg clutch structure", $clutch_structure, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
		}
		//`call_parameters`
		//`fundamental_frequency`, `dominant_frequency`, `pulserate`, `call_duration`, 
		//`note_duration`, `call_guild`, `min_frequency`, `max_frequency`, `dominant_frequency_modulation`
		
		
		$result = mysql_query("select * from call_parameters");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$fundamental_frequency = $row['fundamental_frequency'];
			$dominant_frequency = $row['dominant_frequency'];
			$pulserate = $row['pulserate'];
			$call_duration = $row['call_duration'];
			$note_duration = $row['note_duration'];
			$call_guild = $row['call_guild'];
			$min_frequency = $row['min_frequency'];
			$max_frequency = $row['max_frequency'];
			$dominant_frequency_modulation = $row['dominant_frequency_modulation'];
			
			if($fundamental_frequency!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Fundamental frequency", $fundamental_frequency, "Hz", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($dominant_frequency!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Dominant frequency", $dominant_frequency, "Hz", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($pulserate!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Pulse rate", $pulserate, "Pulse/second", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($call_duration!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Call duration", $call_duration, "millisecond (ms)", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($note_duration!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Note duration", $note_duration, "millisecond (ms)", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($call_guild!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Call guild", $call_guild, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($min_frequency!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Frequency", $min_frequency, "Hz", "", "http://semanticscience.org/resource/SIO_001113.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($max_frequency!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Frequency", $max_frequency, "Hz", "", "http://semanticscience.org/resource/SIO_001114.rdf", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($dominant_frequency_modulation!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Dominant Frequency modulation", $dominant_frequency_modulation, "Hz", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
		}
		
		
		//Calling behavoir
		//`call_perch_hight`, `to_water`, `chorusing`, `cover`, `rapids_or_waterfalls`
		
		$result = mysql_query("select * from calling_behaviour");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$call_perch_hight = $row['call_perch_hight'];
			$to_water = $row['to_water'];
			$chorusing = $row['chorusing'];
			$cover = $row['cover'];
			$rapids_or_waterfalls = $row['rapids_or_waterfalls'];
			
			
			if($call_perch_hight!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "call perch hight", $call_perch_hight, "", "", "", "", "", "", "", "", "", "", ""); 
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			if($to_water!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Calling behaviour: To water", $to_water, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			if($chorusing!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Calling behaviour: Chorusing", $chorusing, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			if($cover!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Calling behaviour: Cover", $cover, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			if($rapids_or_waterfalls!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Calling behaviour: Rapids/waterfalls", $rapids_or_waterfalls, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
		}	
		//ICUN threat
		//`threat_category`, `population_decline`
		
		$result = mysql_query("select * from iucn_threat_status");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$threat_category = $row['threat_category'];
			$population_decline = $row['population_decline'];
			if($threat_category!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "ICUN: Threat category", $threat_category, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($population_decline!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "ICUN: Population decline", $population_decline, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
	
		}
		
		//`habitat_preference`: `macro`, `micro`
		$result = mysql_query("select * from habitat_preference");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$macro = $row['macro'];
			$micro = $row['micro'];
			if($macro!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Preferred macro habitat", $macro, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($micro!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Preferred micro habitat", $micro, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
	
		}
		//Misc
		//`daily_activity`, `reproductive_mode`, `tadpole_habitat`, `tadpole_feeding`, `maternal_care`, 
		//`maternal_care_details`, `abundance`, `stratigraphic_range`, `f_environment_type`, `diet`, `climate`, `holotype`
		
		$result = mysql_query("select * from misc");
		
		while($row = mysql_fetch_assoc($result)){
			$id = $row['id'];
			$daily_activity = $row['daily_activity'];
			$reproductive_mode = $row['reproductive_mode'];
			$tadpole_habitat = $row['tadpole_habitat'];
			$tadpole_feeding = $row['tadpole_feeding'];
			$maternal_care = $row['maternal_care'];
			$maternal_care_details = $row['maternal_care_details'];
			$abundance = $row['abundance'];
			$stratigraphic_range = $row['stratigraphic_range'];
			$f_environment_type = $row['f_environment_type'];
			$diet = $row['diet'];
			$climate = $row['climate'];
			$holotype = $row['holotype'];
			
			if($daily_activity!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Daily activity", $daily_activity, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			
			if($reproductive_mode!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Reproductive mode", $reproductive_mode, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($tadpole_habitat!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Tadpole habitat", $tadpole_habitat, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($tadpole_feeding!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Tadpole feeding", $tadpole_feeding, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($maternal_care!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Maternal care", $maternal_care, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($maternal_care_details!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Maternal care details", $maternal_care_details, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($abundance!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Abundance", $abundance, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($stratigraphic_range!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Stratigraphic range", $stratigraphic_range, "million of years", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($f_environment_type!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Environment type", $f_environment_type, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($diet!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Diet", $diet, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($climate!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Climate", $climate, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
			if($holotype!=null){
				$record1 = array($measurementID, $id, 'yes', "", "", "Holotype", $holotype, "", "", "", "", "", "", "", "", "", "", "");
				fputcsv($fp, $record1,"\t");
				$measurementID ++;
			}
		}
		
		fclose($fp);
	
		
		
		//generate meta.xml file: now it is a static file stored in /eol/meta/... please check it
		copy('eol/meta/meta.xml', 'EXPORTS/meta.xml');
		
		
			
		
		$files_to_zip = array(
		'EXPORTS/taxa.txt',
		'EXPORTS/references.txt',
		'EXPORTS/occurrences.txt',
		'EXPORTS/measurements or facts.txt',
		'EXPORTS/meta.xml',
		);
		//if true, good; if false, zip creation failed
		$result = $this->create_zip($files_to_zip,'EXPORTS/eol-export.zip');
	
		
		$resultDisplay = '<h1> Successful EOL Export </h1><p>'.
						 '<h3> You can view and download the exported file below  </h3> (for more info see <a href = "http://eol.org/info/522" target = "blank"> Structured Data Darwin Core Archives)</a><p>'.
						 'Meta Data: <a href="EXPORTS/meta.xml"> meta.xml</a>   <br>'.
						 'Taxa: <a href="EXPORTS/taxa.txt"> taxa.txt </a> <br>'.
						 'References: <a href="EXPORTS/references.txt"> references.txt </a>  <br>'.
						 'Occurrences <a href="EXPORTS/occurrences.txt"> occurrences.txt </a> <br>'.
						 'Measurements or facts: <a href="EXPORTS/measurements or facts.txt"> measurements or facts.txt </a>   <br>'.
						 '<b>For archive download click <a href="EXPORTS/eol-export.zip">here</a><b> <br>';
						 
		

		//$grid = new Dataface_RecordGrid($record1);

		df_display(array('body'=>$resultDisplay), 'Dataface_Main_Template.html');
	
		/*
		$url = $app->url('-action=list');   // A default URL in case no redirect was supplied
        if ( @$_POST['--redirect'] ) $url = base64_decode($_POST['--redirect']);
        $url .= '&--msg='.urlencode('EOL export successful! You can download the archive <a href="EXPORTS/eol-export.zip">here</a> <br>');
        // Redirect back to the previous page
        header('Location: '.$url);
        exit;
		*/
    }
	
		/* creates a compressed zip file */
		function create_zip($files = array(),$destination = '',$overwrite = false) {
		//if the zip file already exists and overwrite is false, return false
		if(file_exists($destination) && !$overwrite) { return false; }
		//vars
		$valid_files = array();
		//if files were passed in...
		if(is_array($files)) {
			//cycle through each file
			foreach($files as $file) {
				//make sure the file exists
				if(file_exists($file)) {
					$valid_files[] = $file;
				}
			}
		}
		//if we have good files...
		if(count($valid_files)) {
			//create the archive
			$zip = new ZipArchive();
			if($zip->open($destination,$overwrite ? ZIPARCHIVE::OVERWRITE : ZIPARCHIVE::CREATE) !== true) {
				return false;
			}
			//add the files
			foreach($valid_files as $file) {
				$zip->addFile($file,$file);
			}
			//debug
			//echo 'The zip archive contains ',$zip->numFiles,' files with a status of ',$zip->status;
			
			//close the zip -- done!
			$zip->close();
			
			//check to make sure the file exists
			return file_exists($destination);
		}
		else
		{
			return false;
		}
}

}



