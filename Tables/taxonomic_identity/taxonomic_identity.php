<?php
header('Content-Type: text/html; charset=utf-8');
mysql_set_charset ('utf-8');


class tables_taxonomic_identity {

protected $isImport = 0 ;
/*
function field__myid($record){
   
   return $record->strval('Genus').'_'.$record->strval('Species');
}
*/
/*
function description__id(&$record){
	$Species = $record->strval('Species');
	$Genus = $record->strval('Genus');
	$id = $record->val('myid');
    if (empty($id)) return $Species . '_' . $Genus;
}

*/		
	//*************************** SECTIONS ************************************/
	/*
	//relationships details view
	function section__colorDetails(&$record){
		$noData = 1;
		$colorationString = array();
		
		$relatedRecords = $record->getRelatedRecords('colouration');
		
		foreach ($relatedRecords as $coloration){
			
			
			$pattern= $coloration['pattern'];
			
			$color=  $coloration['colour'];
			
			$warty=  $coloration['warty'];
			
			$uni_vs_polymorph=  $coloration['uni_vs_polymorph'];
			
			$colorationString = '<table class="record-view-table"> <tbody>';
				
	
			if(isset($pattern)){
				$noData = 0;
				$colorationString .='<tr><th class="record-view-label">Pattern</th>	<td class="record-view-value">'.$pattern .'</td></tr>';
			}
			if(isset($color)){
				$noData = 0;
				$colorationString .='<tr><th class="record-view-label">Color</th>	<td class="record-view-value">'.$color .'</td></tr>';
			}
			if(isset($warty)){
				$noData = 0;
				$colorationString .='<tr><th class="record-view-label">Warty</th>	<td class="record-view-value">'.$warty .'</td></tr>';
			}
			if(isset($uni_vs_polymorph)){
				$noData = 0;
				$colorationString .='<tr><th class="record-view-label">UNI/Polymorph</th>	<td class="record-view-value">'.$uni_vs_polymorph .'</td></tr>';
			}
			
			$colorationString .= '</tbody></table>'	;
		}
		
		if($noData == 1)
			return array();
		else	
			return array(
				'content' => $colorationString ,
				'class' => 'left',
				'order' => 3,
				'label' => 'Colouration Details'
				
			);
		
	}
	

	//relationships details view
	function section__distributionDetails(&$record){
	
		$noData = 1;
		
		$distributionString = array();
		
		$relatedRecords = $record->getRelatedRecords('distribution');
		
		foreach ($relatedRecords as $distribution){
			
			
			$continent= $distribution['Continent'];
			
			$Range_size1=  $distribution['Range_size1'];
			
			$Range_size1=  $distribution['Range_size1'];
			$Range=  $distribution['Range'];
			$elevation_min=  $distribution['elevation_min'];
			$elevation_max=  $distribution['elevation_max'];
			
			
			$distributionString = '<table class="record-view-table"> <tbody>';
				
	
			if(isset($continent)){
				$noData = 0;
				$distributionString .='<tr><th class="record-view-label">Continent</th>	<td class="record-view-value">'.$continent .'</td></tr>';
			}
			if(isset($Range_size1)){
				$noData = 0;
				$distributionString .='<tr><th class="record-view-label">Range size 1</th>	<td class="record-view-value">'.$Range_size1 .'</td></tr>';
			}
			if(isset($Range_size2)){
				$noData = 0;
				$distributionString .='<tr><th class="record-view-label">Range size 2</th>	<td class="record-view-value">'.$Range_size2 .'</td></tr>';
			}
			if(isset($Range)){
				$noData = 0;
				$distributionString .='<tr><th class="record-view-label">Range</th>	<td class="record-view-value">'.$Range .'</td></tr>';
			}
			if(isset($elevation_min)){
				$noData = 0;
				$distributionString .='<tr><th class="record-view-label">Minimum Elevation</th>	<td class="record-view-value">'.$elevation_min .'</td></tr>';
			}
			if(isset($elevation_max)){
				$noData = 0;
				$distributionString .='<tr><th class="record-view-label">Maximum Elevation</th>	<td class="record-view-value">'.$elevation_max .'</td></tr>';
			}
			$distributionString .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $distributionString ,
					'class' => 'left',
					'order' => 2,
					'label' => 'Distribution Details',
			
				);
		
	}
	
	function section__bodysizeDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('bodysize');
		
		foreach ($relatedRecords as $distribution){
			
			
			$svl_male_min= $distribution['svl_male_min'];
			$svl_male_max=  $distribution['svl_male_max'];
			$svl_male_mean=  $distribution['svl_male_mean'];
			$svl_female_min=  $distribution['svl_female_min'];
			$svl_female_max=  $distribution['elevation_min'];
			$svl_female_mean=  $distribution['elevation_max'];
			
			
			$contentStr = '<table class="record-view-table"> <tbody>';
				
	
			if(isset($svl_male_min)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Minimum snout-vent length for male</th>	<td class="record-view-value">'.$svl_male_min .'</td></tr>';
			}
			if(isset($svl_male_max)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Maximum snout-vent length for male</th>	<td class="record-view-value">'.$svl_male_max .'</td></tr>';
			}
			if(isset($svl_male_mean)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Mean snout-vent length for male</th>	<td class="record-view-value">'.$svl_male_mean .'</td></tr>';
			}
			if(isset($svl_female_min)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Minimum snout-vent length for female</th>	<td class="record-view-value">'.$svl_female_min .'</td></tr>';
			}
			if(isset($svl_female_max)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Maximum snout-vent length for female</th>	<td class="record-view-value">'.$svl_female_max .'</td></tr>';
			}
			if(isset($svl_female_mean)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Mean snout-vent length for female</th>	<td class="record-view-value">'.$svl_female_mean .'</td></tr>';
			}
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 4,
					'label' => 'Body Size Details',
			
				);
		
	}
	function section__callParametersDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('call_parameters');
		
		foreach ($relatedRecords as $relatedRecord){
			
			$fundamental_frequency= $relatedRecord['fundamental_frequency'];
			$dominant_frequency= $relatedRecord['dominant_frequency'];
			$call_duration=  $relatedRecord['call_duration'];
			$pulserate=  $relatedRecord['pulserate'];
			$note_duration=  $relatedRecord['note_duration'];
			$call_guild=  $relatedRecord['call_guild'];
			$min_frequency=  $relatedRecord['min_frequency'];
			$max_frequency=  $relatedRecord['max_frequency'];
			$dominant_frequency_modulation=  $relatedRecord['dominant_frequency_modulation'];
			
			
			$contentStr = '<table class="record-view-table"> <tbody>';
			

			if(isset($fundamental_frequency)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Fundamental frequency</th>	<td class="record-view-value">'.$fundamental_frequency .'</td></tr>';
			}			
	
			if(isset($dominant_frequency)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Dominant frequency</th>	<td class="record-view-value">'.$dominant_frequency .'</td></tr>';
			}
			if(isset($pulserate)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Pulse rate</th>	<td class="record-view-value">'.$pulserate .'</td></tr>';
			}
			if(isset($call_duration)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Call duration</th>	<td class="record-view-value">'.$call_duration .'</td></tr>';
			}
			
			if(isset($note_duration)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Note duration</th>	<td class="record-view-value">'.$note_duration .'</td></tr>';
			}
			if(isset($call_guild)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Call guild</th>	<td class="record-view-value">'.$call_guild .'</td></tr>';
			}
			if(isset($min_frequency)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Minimum frequency</th>	<td class="record-view-value">'.$min_frequency .'</td></tr>';
			}
			if(isset($max_frequency)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Maximum frequency</th>	<td class="record-view-value">'.$max_frequency .'</td></tr>';
			}
			if(isset($dominant_frequency_modulation)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Dominant frequency modulation</th>	<td class="record-view-value">'.$dominant_frequency_modulation .'</td></tr>';
			}
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 10,
					'label' => 'Call Parameters Details',
			
				);
		
	}
	
	function section__callBehaviorDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('calling_behaviour');
		
		foreach ($relatedRecords as $relatedRecord){
			
			$call_perch_hight= $relatedRecord['call_perch_hight'];
			$to_water= $relatedRecord['to_water'];
			$chorusing=  $relatedRecord['chorusing'];
			$cover=  $relatedRecord['cover'];
			$rapids_or_waterfalls=  $relatedRecord['rapids_or_waterfalls'];
			
			
			$contentStr = '<table class="record-view-table"> <tbody>';
			

			if(isset($call_perch_hight)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">rapids_or_waterfalls</th>	<td class="record-view-value">'.$call_perch_hight .'</td></tr>';
			}			
	
			if(isset($to_water)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">To Water</th>	<td class="record-view-value">'.$to_water .'</td></tr>';
			}
			if(isset($cover)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Chorusing</th>	<td class="record-view-value">'.$cover .'</td></tr>';
			}
			if(isset($chorusing)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Cover</th>	<td class="record-view-value">'.$chorusing .'</td></tr>';
			}
			
			if(isset($rapids_or_waterfalls)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Rapids/Waterfalls</th>	<td class="record-view-value">'.$rapids_or_waterfalls .'</td></tr>';
			}
			
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 11,
					'label' => 'Calling Behaviour Details',
					
			
				);
		
	}
	
	/*
	function section__vocalSacDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('vocal_sac_tympanum');
		
		foreach ($relatedRecords as $relatedRecord){
			
			$vocal_sac_manifestation= $relatedRecord['vocal_sac_manifestation'];
			$vocal_sac_form= $relatedRecord['vocal_sac_form'];
			$vocal_sac_distensibility=  $relatedRecord['vocal_sac_distensibility'];
			$tympanum_covering=  $relatedRecord['tympanum_covering'];
			$tympanum_eye_ration=  $relatedRecord['tympanum_eye_ration'];
			
			
			$contentStr = '<table class="record-view-table"> <tbody>';
			

			if(isset($vocal_sac_manifestation)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Vocal sac manifestation</th>	<td class="record-view-value">'.$vocal_sac_manifestation .'</td></tr>';
			}			
	
			if(isset($vocal_sac_form)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Vocal sac form </th><td class="record-view-value">'.$vocal_sac_form .'</td></tr>';
			}
			
			if(isset($vocal_sac_distensibility)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Vocal sac distensibility </th>	<td class="record-view-value">'.$vocal_sac_distensibility .'</td></tr>';
			}
			if(isset($tympanum_covering)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Tympanum covering	</th><td class="record-view-value">'.$tympanum_covering .'</td></tr>';
			}
			if(isset($tympanum_eye_ration)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Tympanum eye ration</th>	<td class="record-view-value">'.$tympanum_eye_ration .'</td></tr>';
			}
			
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 8,
					'label' => 'Vocal sac tympanum Details',
			
				);
		
	}
	
	function section__miscDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('misc');
		
		foreach ($relatedRecords as $relatedRecord){
			
			$daily_activity= $relatedRecord['daily_activity'];
			$reproductive_mode= $relatedRecord['reproductive_mode'];
			$tadpole_habitat=  $relatedRecord['tadpole_habitat'];
			$tadpole_feeding=  $relatedRecord['tadpole_feeding'];
			$maternal_care=  $relatedRecord['maternal_care'];
			
			
			$maternal_care_details=  $relatedRecord['maternal_care_details'];

			$abundance=  $relatedRecord['abundance'];

			$stratigraphic_range=  $relatedRecord['stratigraphic_range'];

			$f_environment_type=  $relatedRecord['f_environment_type'];

			$diet=  $relatedRecord['diet'];

			$climate=  $relatedRecord['climate'];

			$holotype=  $relatedRecord['holotype'];

			
			$contentStr = '<table class="record-view-table"> <tbody>';
			

			if(isset($daily_activity)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Daily activity</th>	<td class="record-view-value">'.$daily_activity .'</td></tr>';
			}			
	
			if(isset($reproductive_mode)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Reproductive mode</th>	<td class="record-view-value">'.$reproductive_mode .'</td></tr>';
			}
			if(isset($tadpole_habitat)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Tadpole habitat</th>	<td class="record-view-value">'.$tadpole_habitat .'</td></tr>';
			}
			if(isset($tadpole_feeding)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Tadpole feeding</th>	<td class="record-view-value">'.$tadpole_feeding .'</td></tr>';
			}
			
			
			if(isset($maternal_care)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label"> Maternal care</th>	<td class="record-view-value">'.$maternal_care .'</td></tr>';
			}
			
			if(isset($maternal_care_details)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label"> Maternal care details</th>	<td class="record-view-value">'.$maternal_care_details .'</td></tr>';
			}
			
			if(isset($abundance)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Abundance</th>	<td class="record-view-value">'.$abundance .'</td></tr>';
			}
			
			if(isset($stratigraphic_range)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Stratigraphic range</th>	<td class="record-view-value">'.$stratigraphic_range .'</td></tr>';
			}
			if(isset($f_environment_type)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Environment type</th>	<td class="record-view-value">'.$f_environment_type .'</td></tr>';
			}
			if(isset($diet)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Diet</th>	<td class="record-view-value">'.$diet .'</td></tr>';
			}
			
			if(isset($climate)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Climate</th>	<td class="record-view-value">'.$climate .'</td></tr>';
			}
			
			if(isset($holotype)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Holotype</th>	<td class="record-view-value">'.$holotype .'</td></tr>';
			}
			
			
			
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 14,
					'label' => 'Misc',
			
				);
		
	}
	function section__ForelimbDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('forlimb_characters');
		
		foreach ($relatedRecords as $distribution){
			
			
			$forelimb_length= $distribution['forelimb_length'];
			$humerus_length_min=  $distribution['humerus_length_min'];
			$humerus_length_max=  $distribution['humerus_length_max'];
			$hand_length=  $distribution['hand_length'];
			$first_finger_length=  $distribution['first_finger_length'];
			$second_finger_length=  $distribution['second_finger_length'];
			$third_finger_length=  $distribution['third_finger_length'];
			$forth_finger_length=  $distribution['forth_finger_length'];
			$finger_disk=  $distribution['finger_disk'];
			$dermal_fringe_along_finger=  $distribution['dermal_fringe_along_finger'];
			
			$lateral_dermal_fringe_on_finger=  $distribution['lateral_dermal_fringe_on_finger'];
			$inner_palmar_tubercle=  $distribution['inner_palmar_tubercle'];
			$inner_palmar_tubercle=  $distribution['inner_palmar_tubercle'];
			
			$outer_plmar_tubercle=  $distribution['outer_plmar_tubercle'];
			$webbing_on_finger=  $distribution['webbing_on_finger'];
			
			
			
			
			$contentStr = '<table class="record-view-table"> <tbody>';
				
	
			if(isset($forelimb_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Forelimb length</th>	<td class="record-view-value">'.$forelimb_length .'</td></tr>';
			}
			if(isset($humerus_length_min)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Minimum humerus length</th>	<td class="record-view-value">'.$humerus_length_min .'</td></tr>';
			}
			if(isset($humerus_length_max)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Maximum humerus length</th>	<td class="record-view-value">'.$humerus_length_max .'</td></tr>';
			}
			if(isset($hand_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Hand length</th>	<td class="record-view-value">'.$hand_length .'</td></tr>';
			}
			if(isset($first_finger_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">First finger length</th>	<td class="record-view-value">'.$first_finger_length .'</td></tr>';
			}
			if(isset($second_finger_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Second finger length</th>	<td class="record-view-value">'.$second_finger_length .'</td></tr>';
			}
			if(isset($third_finger_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Third finger length</th>	<td class="record-view-value">'.$third_finger_length .'</td></tr>';
			}
			if(isset($forth_finger_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Forth finger length</th>	<td class="record-view-value">'.$forth_finger_length .'</td></tr>';
			}
			if(isset($finger_disk)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Finger disk</th>	<td class="record-view-value">'.$finger_disk .'</td></tr>';
			}
			if(isset($dermal_fringe_along_finger)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Dermal fringe along finger</th>	<td class="record-view-value">'.$dermal_fringe_along_finger .'</td></tr>';
			}
			if(isset($lateral_dermal_fringe_on_finger)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Lateral dermal fringe on finger</th>	<td class="record-view-value">'.$lateral_dermal_fringe_on_finger .'</td></tr>';
			}
			if(isset($webbing_on_finger)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Webbing on finger</th>	<td class="record-view-value">'.$webbing_on_finger .'</td></tr>';
			}
			
			if(isset($inner_palmar_tubercle)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Inner palmar tubercle</th>	<td class="record-view-value">'.$inner_palmar_tubercle .'</td></tr>';
			}
			if(isset($outer_plmar_tubercle)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Outer plmar tubercle</th>	<td class="record-view-value">'.$outer_plmar_tubercle .'</td></tr>';
			}
			if(isset($supernumerary_tubercle_on_finger)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Supernumerary tubercle on finger</th>	<td class="record-view-value">'.$supernumerary_tubercle_on_finger .'</td></tr>';
			}
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 5,
					'label' => 'Forelimb Details',
			
				);
		
	}
	
	
	function section__hindlimbDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('hindlimb_characters');
		
		foreach ($relatedRecords as $distribution){
			
			
			$femur_length_min= $distribution['femur_length_min'];
			$femur_length_max=  $distribution['femur_length_max'];
			$humerus_length_max=  $distribution['humerus_length_max'];
			$tibia_shank_length=  $distribution['tibia_shank_length'];
			$foot_length=  $distribution['foot_length'];
			$total_foot_length=  $distribution['total_foot_length'];
			$first_toe_length=  $distribution['first_toe_length'];
			$second_toe_length=  $distribution['second_toe_length'];
			$third_toe_length=  $distribution['third_toe_length'];
			$fourth_toe_length=  $distribution['fourth_toe_length'];
			$fifth_toe_length=  $distribution['fifth_toe_length'];
			$dermal_fringe_along_toe=  $distribution['dermal_fringe_along_toe'];
			$lateral_dermal_fringe_on_toe=  $distribution['lateral_dermal_fringe_on_toe'];
			$supernumerary_tubercle_on_toes=  $distribution['supernumerary_tubercle_on_toes'];
			$inner_metatarsal_tubercle=  $distribution['inner_metatarsal_tubercle'];
			$outer_metatarsal_tubercle=  $distribution['outer_metatarsal_tubercle'];
			$webbing_on_toe=  $distribution['webbing_on_toe'];
				
			
			
			
			$contentStr = '<table class="record-view-table"> <tbody>';
				
	
			if(isset($femur_length_min)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Minimum femur length</th>	<td class="record-view-value">'.$femur_length_min .'</td></tr>';
			}
			if(isset($femur_length_max)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Maximum Femur length</th>	<td class="record-view-value">'.$femur_length_max .'</td></tr>';
			}
			if(isset($humerus_length_max)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Maximum humerus length</th>	<td class="record-view-value">'.$humerus_length_max .'</td></tr>';
			}
			if(isset($tibia_shank_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Tibia shank length</th>	<td class="record-view-value">'.$tibia_shank_length .'</td></tr>';
			}
			if(isset($foot_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Foot length</th>	<td class="record-view-value">'.$foot_length .'</td></tr>';
			}
			if(isset($total_foot_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Total foot length</th>	<td class="record-view-value">'.$total_foot_length .'</td></tr>';
			}
			if(isset($first_toe_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">First toe length</th>	<td class="record-view-value">'.$first_toe_length .'</td></tr>';
			}
			if(isset($second_toe_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Second toe length</th>	<td class="record-view-value">'.$second_toe_length .'</td></tr>';
			}
			if(isset($third_toe_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Third toe length</th>	<td class="record-view-value">'.$third_toe_length .'</td></tr>';
			}
			if(isset($fourth_toe_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Fourth toe length</th>	<td class="record-view-value">'.$fourth_toe_length .'</td></tr>';
			}
			if(isset($fifth_toe_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Fifth toe length</th>	<td class="record-view-value">'.$fifth_toe_length .'</td></tr>';
			}
			if(isset($webbing_on_toe)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Webbing on toe</th>	<td class="record-view-value">'.$webbing_on_toe .'</td></tr>';
			}
			
			if(isset($dermal_fringe_along_toe)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Dermal fringe along toe</th>	<td class="record-view-value">'.$dermal_fringe_along_toe .'</td></tr>';
			}
			if(isset($lateral_dermal_fringe_on_toe)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Lateral dermal fringe on toe</th>	<td class="record-view-value">'.$lateral_dermal_fringe_on_toe .'</td></tr>';
			}
			if(isset($supernumerary_tubercle_on_toes)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Supernumerary tubercle on toes</th>	<td class="record-view-value">'.$supernumerary_tubercle_on_toes .'</td></tr>';
			}
			
			if(isset($inner_metatarsal_tubercle)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Inner metatarsal tubercle</th>	<td class="record-view-value">'.$inner_metatarsal_tubercle .'</td></tr>';
			}
			if(isset($outer_metatarsal_tubercle)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Outer plmar tubercle</th>	<td class="record-view-value">'.$outer_metatarsal_tubercle .'</td></tr>';
			}
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 6,
					'label' => 'Hindlimb Details',
			
				);
		
	}
	function section__headDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('head_char');
		
		foreach ($relatedRecords as $distribution){
			
			
			$head_length= $distribution['head_length'];
			$head_width=  $distribution['head_width'];
			$snout_length=  $distribution['snout_length'];
			$internarial_distance=  $distribution['internarial_distance'];
			$nostril_to_snout_distance=  $distribution['nostril_to_snout_distance'];
			$total_nostril_to_snout_distance=  $distribution['total_nostril_to_snout_distance'];
			$eye_to_nostril=  $distribution['eye_to_nostril'];
			$maximum_tympanum_diameter=  $distribution['maximum_tympanum_diameter'];
			$eye_length=  $distribution['eye_length'];
			$distance_between_front_of_eyes=  $distribution['distance_between_front_of_eyes'];
			$distance_between_behind_of_eyes=  $distribution['distance_between_behind_of_eyes'];
			$interorbital_distance=  $distribution['interorbital_distance'];
			$snout_shape_lateral=  $distribution['snout_shape_lateral'];
			$snout_shape_dorsal=  $distribution['snout_shape_dorsal'];
			$interorbital_shape=  $distribution['interorbital_shape'];
			$pineal_oscilus=  $distribution['pineal_oscilus'];
			$loreal_region_shape=  $distribution['loreal_region_shape'];
			$canthus_rostralis=  $distribution['canthus_rostralis'];
			$nostril_shape=  $distribution['nostril_shape']; 
			$tympanum_shape=  $distribution['tympanum_shape'];
			
			
			$contentStr = '<table class="record-view-table"> <tbody>';
				
	
			if(isset($head_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Head length</th>	<td class="record-view-value">'.$head_length .'</td></tr>';
			}
			if(isset($head_width)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Head width</th>	<td class="record-view-value">'.$head_width .'</td></tr>';
			}
			if(isset($snout_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Snout length</th>	<td class="record-view-value">'.$snout_length .'</td></tr>';
			}
			if(isset($internarial_distance)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Internarial distance</th>	<td class="record-view-value">'.$internarial_distance .'</td></tr>';
			}
			if(isset($nostril_to_snout_distance)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Nostril to snout distance</th>	<td class="record-view-value">'.$nostril_to_snout_distance .'</td></tr>';
			}
			if(isset($total_nostril_to_snout_distance)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Total foot length</th>	<td class="record-view-value">'.$total_nostril_to_snout_distance .'</td></tr>';
			}
			if(isset($eye_to_nostril)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Eye to nostril</th>	<td class="record-view-value">'.$eye_to_nostril .'</td></tr>';
			}
			if(isset($maximum_tympanum_diameter)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Maximum tympanum diameter</th>	<td class="record-view-value">'.$maximum_tympanum_diameter .'</td></tr>';
			}
			if(isset($eye_length)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Eye length</th>	<td class="record-view-value">'.$eye_length .'</td></tr>';
			}
			if(isset($distance_between_front_of_eyes)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Distance between front of eyes</th>	<td class="record-view-value">'.$distance_between_front_of_eyes .'</td></tr>';
			}
			if(isset($distance_between_behind_of_eyes)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Distance between behind of eyes</th>	<td class="record-view-value">'.$distance_between_behind_of_eyes .'</td></tr>';
			}
				
			if(isset($interorbital_distance)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Interorbital distance</th>	<td class="record-view-value">'.$interorbital_distance .'</td></tr>';
			}
			if(isset($snout_shape_lateral)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Snout shape lateral</th>	<td class="record-view-value">'.$snout_shape_lateral .'</td></tr>';
			}
			if(isset($snout_shape_dorsal)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Snout shape dorsal</th>	<td class="record-view-value">'.$snout_shape_dorsal .'</td></tr>';
			}
			
			if(isset($interorbital_shape)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Interorbital shape</th>	<td class="record-view-value">'.$interorbital_shape .'</td></tr>';
			}
			if(isset($pineal_oscilus)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Pineal oscilus</th>	<td class="record-view-value">'.$pineal_oscilus .'</td></tr>';
			}
			
			if(isset($loreal_region_shape)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Loreal region shape</th>	<td class="record-view-value">'.$loreal_region_shape .'</td></tr>';
			}
			if(isset($canthus_rostralis)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Canthus rostralis</th>	<td class="record-view-value">'.$canthus_rostralis .'</td></tr>';
			}
			if(isset($nostril_shape)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Nostril shape</th>	<td class="record-view-value">'.$nostril_shape .'</td></tr>';
			}
			
			if(isset($tympanum_shape)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Tympanum shape</th>	<td class="record-view-value">'.$tympanum_shape .'</td></tr>';
			}
			
			
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 7,
					'label' => 'Head Details',
			
				);
		
	}
	
	function section__eggDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('egg_deposition');
		
		foreach ($relatedRecords as $distribution){
			
			
			$location= $distribution['location'];
			$details=  $distribution['details'];
			$clutchsize_eggs_min=  $distribution['clutchsize_eggs_min'];
			$clutchsize_eggs_max=  $distribution['clutchsize_eggs_max'];
			$clutchsize_eggs_class=  $distribution['clutchsize_eggs_class'];
			$clutchsize_method=  $distribution['clutchsize_method'];
			$egg_diameter_without_jelly=  $distribution['egg_diameter_without_jelly'];
			$egg_diameter_with_jelly=  $distribution['egg_diameter_with_jelly'];
			$clutch_structure=  $distribution['clutch_structure'];
			
			
			
			$contentStr = '<table class="record-view-table"> <tbody>';
				
	
		
			if(isset($clutchsize_eggs_min)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Minimum number of eggs</th>	<td class="record-view-value">'.$clutchsize_eggs_min .'</td></tr>';
			}
			if(isset($clutchsize_eggs_max)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Maximum number of eggs</th>	<td class="record-view-value">'.$clutchsize_eggs_max .'</td></tr>';
			}
			if(isset($clutchsize_eggs_class)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Size class</th>	<td class="record-view-value">'.$clutchsize_eggs_class .'</td></tr>';
			}
			if(isset($clutchsize_method)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Method</th>	<td class="record-view-value">'.$clutchsize_method .'</td></tr>';
			}
			if(isset($egg_diameter_without_jelly)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Egg diameter without jelly</th>	<td class="record-view-value">'.$egg_diameter_without_jelly .'</td></tr>';
			}
			if(isset($egg_diameter_with_jelly)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Egg diameter with jelly</th>	<td class="record-view-value">'.$egg_diameter_with_jelly .'</td></tr>';
			}
			if(isset($clutch_structure)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Location</th>	<td class="record-view-value">'.$clutch_structure .'</td></tr>';
			}
			if(isset($location)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Location</th>	<td class="record-view-value">'.$location .'</td></tr>';
			}
			if(isset($details)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Details</th>	<td class="record-view-value">'.$details .'</td></tr>';
			}
			
			
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 8,
					'label' => 'Egg Details',
			
				);
		
	}
	
	
	function section__icunThreatDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('iucn_threat');
		
		foreach ($relatedRecords as $distribution){
			
			
			$threat_category= $distribution['threat_category'];
			$population_decline=  $distribution['population_decline'];
			
			$contentStr = '<table class="record-view-table"> <tbody>';
				
	
			if(isset($threat_category)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Threat Category</th>	<td class="record-view-value">'.$threat_category .'</td></tr>';
			}
			if(isset($population_decline)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Population Decline</th>	<td class="record-view-value">'.$population_decline .'</td></tr>';
			}
			
			
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 12,
					'label' => 'ICUN Threat Details',
			
				);
		
	}
	
	
	

	
	
		function section__habitatDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('habitat_preference');
		
		foreach ($relatedRecords as $distribution){
			
			
			$macro= $distribution['macro'];
			$micro=  $distribution['micro'];
			
			$contentStr = '<table class="record-view-table"> <tbody>';
				
	
			if(isset($macro)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Preferred macro habitat</th>	<td class="record-view-value">'.$macro .'</td></tr>';
			}
			if(isset($micro)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">Preferred micro habitat</th>	<td class="record-view-value">'.$micro .'</td></tr>';
			}
			
			
			$contentStr .= '</tbody></table>';
			}
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'left',
					'order' => 11,
					'label' => 'Habitat Details',
			
				);
		
	}
	
	*/
	//Change log section
	function section__historyDetails(&$record){
		$noData = 1;
		$contentStr = array();
		
		$relatedRecords = $record->getRelatedRecords('user_tracking');
		
		
		$contentStr = '<table class="record-view-table"> <tbody>';
		foreach ($relatedRecords as $relatedRecord){
			
			
			$userid= $relatedRecord['userid'];
			$action=  $relatedRecord['action'];
			$time = $relatedRecord['time'];
			//according to a problem with displaying MySQL timestamp i wrote this workaround
			$index = 0;
			
			foreach ($time  as &$value) {
			
				if(strval($value) != 'Array' && strval($value) != '0' ){
					$sttt .= $value . '/';
					$timeArray[$index] = $value ;
					$index++;
				}
			}
			
			$modificationDate = $timeArray[2] . '/' .$timeArray[1] . '/' .$timeArray[0]. ' - ' .$timeArray[4]. ':'.$timeArray[5].':'.$timeArray[6];
			
			if(isset($userid)){
				$noData = 0;
				$contentStr .='<tr><th class="record-view-label">'.$action. ' by ' .$userid. ' at ' .$modificationDate. '</th>	<td class="record-view-value"></td></tr>';
			}
			
			
			}
			$contentStr .= '</tbody></table>';
			
			if($noData == 1)
				return array();
			else	
				return array(
					'content' => $contentStr ,
					'class' => 'main',
					'order' => 20,
					'label' => 'Change History',
			
				);
		
	}
	
	
	//detailed display
	function imageurl__htmlValue(&$record){
		return '<img src="'.$record->display('imageurl').'"  width="300"></img>';
	} 
	
	
	
	
	//list display
	function imageurl__renderCell(&$record){
		return '<img src="'.$record->display('imageurl').'" width="150"/>';
	}
	
	/*
	//for videos use embed
	function imageurl__htmlValue(&$record){
		return '<embed  width="300"  height="315" src="'.$record->display('imageurl').'" ></embed>';
	} 
	//list display
	function imageurl__renderCell(&$record){
		return '<embed  width="200"  src="'.$record->display('imageurl').'" ></embed>';
	}
	*/
	

	function after_action_new($params=array()){
		$record =& $params['record'];
		header('Location: '.$record->getURL('-action=view').'&--msg='.urlencode('Record successfully inserted.'));
		exit;
	}

	
	function beforeInsert(&$record){
	
		if( $this->isImport ==0) {
			$Species = $record->strval('Species');
			$Genus = $record->strval('Genus');
			$record->setValue('id',$Species . '_' . $Genus);
		}
		
		
	}
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
						'taxon_identity_id' => trim($recordID),
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
	
	//for user tracking information
	function afterDelete(&$record){
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();
		$this->trackUser($record->strval('id'),'DELETE',$user->val('UserName'));
	}
	
	
	
	
	/*
	//for user tracking information	
	function useraction__permissions($record){
		return Dataface_PermissionsTool::NO_ACCESS();
	}
	
	function userid__permissions($record){
		return Dataface_PermissionsTool::NO_ACCESS();
	}
	*/
	
	
	
	function id__default(){ 
		return 'will be automatically generated';
	}
	
	function id__permissions($record){
		//$perms = Dataface_PermissionsTool::NO_ACCESS();
		//$perms['edit'] = 1;
		$perms['new'] = 0;
		return $perms;

	}
	function __import__csv(&$data, $defaultValues=array()){
	
	$SEP = ','; //CSV separator
	$this->isImport = 1;
	$onlyTaxnomicIdentity = 0;
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
				
			$nrCommas = substr_count($row, $SEP);
			if($nrCommas == 6 || $nrCommas == 7)
				$onlyTaxnomicIdentity = 1;
			$i++;
		
		continue;
		}
	
		//In case only taxonomic_identity needs to be imported
		if($onlyTaxnomicIdentity == 1){
			 list($Id,$Order,$Family,$Genus,$Species,$Tax_authority,$referenceID,$imageurl) = str_getcsv($row, $SEP,'"');
			 
			 if(empty($Id))
			$Id = utf8_encode(trim($Genus)) .'_'. utf8_encode(trim($Species));
			
			$record = new Dataface_Record('taxonomic_identity', array());
			 // We insert the default values for the record.
			$record->setValues($defaultValues);  
			
			// Now we add the values from the CSV file to the taxonomic_identy table
			$record->setValues(
				array(
					'id'=>trim($Id),
					'Order'=>utf8_encode(trim($Order)),
					'Family'=>utf8_encode(trim($Family)),
					'Genus'=>utf8_encode(trim($Genus)),
					'Species'=>utf8_encode(trim($Species)),
					'Tax_authority'=>utf8_encode(trim($Tax_authority)),
					'referenceID'=>utf8_encode(trim($referenceID)),
					'imageurl'=>utf8_encode(trim($imageurl))
					
					 )
				);
			$record->save();
			$records[] = $record ; 
		}
		
		//Import complete trait data
		else {
		
			// We iterate through the rows and parse the fields so that they can be stored in a Dataface_Record object.
			list($Id,$Order,$Family,$Genus,$Species,$Tax_authority,
			
				//distribution
				$Continent,$Range_size1,$Range_size2,$Range,$elevation_min,$elevation_max,
				
				//bodysize
				$svl_male_min,$svl_male_max,$svl_male_mean,$svl_female_min,$svl_female_max,$svl_female_mean,$sexual_dimorphism,
				
				//head_characters
				$head_length,$head_width,$snout_length,$internarial_distance,$nostril_to_snout_distance,$eye_to_nostril,$maximum_tympanum_diameter,
				$eye_length,$distance_between_front_of_eyes,$distance_between_behind_of_eyes,$interorbital_distance,$snout_shape_lateral,
				$snout_shape_dorsal,$interorbital_shape,$loreal_region_shape,$canthus_rostralis,$nostril_shape,$tympanum_shape,
				
				//forlimb_characters
				$forelimb_length,$humerus_length_min,$humerus_length_max,$hand_length,$first_finger_length,$second_finger_length,$third_finger_length,
				$forth_finger_length,$finger_disk,$dermal_fringe_along_finger,$lateral_dermal_fringe_on_finger,$webbing_on_finger,$inner_palmar_tubercle,
				$outer_plmar_tubercle,$supernumerary_tubercle_on_finger,
				
				//hindlimb_characters
				$femur_length_min,$femur_length_max,$tibia_shank_length,$foot_length,$total_foot_length,$first_toe_length,$second_toe_length,
				$third_toe_length,$fourth_toe_length,$fifth_toe_length,$webbing_on_toe,$dermal_fringe_along_toe,$lateral_dermal_fringe_on_toe,
				$supernumerary_tubercle_on_toes,$inner_metatarsal_tubercle,$outer_metatarsal_tubercle,
				
				//vocal_sac_tympanum
				$vocal_sac_manifestation,$vocal_sac_form,$vocal_sac_distensibility,$tympanum_covering,$tympanum_eye_ration,

				//habitat_preference
				$macro, $micro,
				
				//misc
				$daily_activity,
				
				//egg_deposition
				$clutchsize_eggs_min,$clutchsize_eggs_max,$clutchsize_eggs_class,$clutchsize_method,$egg_diameter_without_jelly,
				$egg_diameter_with_jelly,$location,$details,$clutch_structure,
				
				
				//misc
				$reproductive_mode,$tadpole_habitat,$tadpole_feeding,$maternal_care,$maternal_care_details,$abundance,$stratigraphic_range,$f_environment_type,$diet,
				
				
				//iucn_threat_status
				$threat_category,$population_decline,
				
				//colouration
				$pattern,$colour,$warty,$uni_vs_polymorph,
				
				//misc
				$climate,
				
				//call_parameters
				$fundamental_frequency,$dominant_frequency,$pulserate,$call_duration,$note_duration,$call_guild,$min_frequency,$max_frequency,$dominant_frequency_modulation,
				
				//calling_behaviour
				$call_perch_hight,$to_water,$chorusing,$cover,$rapids_or_waterfalls,
				
				//misc
				$holotype,
				
				
				//taxonomic_identity
				$imageurl
				
				

				) =  str_getcsv($row, $SEP,'"') ;//; explode(';', $row);
		 
			
			if(empty($Id))
				$Id = utf8_encode(trim($Genus)) .'_'. utf8_encode(trim($Species));
				
			$record = new Dataface_Record('taxonomic_identity', array());
			 // We insert the default values for the record.
			$record->setValues($defaultValues);  
			
			// Now we add the values from the CSV file to the taxonomic_identy table
			$record->setValues(
				array(
					'id'=>trim($Id),
					'Order'=>utf8_encode(trim($Order)),
					'Family'=>utf8_encode(trim($Family)),
					'Genus'=>utf8_encode(trim($Genus)),
					'Species'=>utf8_encode(trim($Species)),
					'Tax_authority'=>utf8_encode(trim($Tax_authority)),
					'imageurl'=>utf8_encode(trim($imageurl))
					
					 )
				);
			$record->save();
			
			
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
			
			
			$head_characters = new Dataface_Record('head_characters', array());
			 // We insert the default values for the record.
			$head_characters->setValues($defaultValues);  
			
			$head_characters->setValues(
					array(
						'id'=>trim($Id),
						'head_length'=>trim($head_length),
						'head_width'=>trim($head_width),
						'snout_length'=>trim($snout_length),
						'internarial_distance'=>trim($internarial_distance),
						'nostril_to_snout_distance'=>trim($nostril_to_snout_distance),
						'eye_to_nostril'=>trim($eye_to_nostril),
						'maximum_tympanum_diameter'=>trim($maximum_tympanum_diameter),
						'eye_length'=>trim($eye_length),
						'distance_between_front_of_eyes'=>trim($distance_between_front_of_eyes),
						'distance_between_behind_of_eyes'=>trim($distance_between_behind_of_eyes),
						'interorbital_distance'=>trim($interorbital_distance),
						'snout_shape_lateral'=>trim($snout_shape_lateral),
						'snout_shape_dorsal'=>trim($snout_shape_dorsal),
						'interorbital_shape'=>trim($interorbital_shape),
						'loreal_region_shape'=>trim($loreal_region_shape),
						'canthus_rostralis'=>trim($canthus_rostralis),
						'nostril_shape'=>trim($nostril_shape),
						'tympanum_shape'=>trim($tympanum_shape)
			
						)
				);
			$head_characters->save();
			
			
			$forlimb_characters	= new Dataface_Record('forlimb_characters', array());
			 // We insert the default values for the record.
			$forlimb_characters->setValues($defaultValues);  
			
			$forlimb_characters->setValues(
					array(
						'id'=>trim($Id),
						'forelimb_length'=>trim($forelimb_length),
						'humerus_length_min'=>trim($humerus_length_min),
						'humerus_length_max'=>trim($humerus_length_max),
						'hand_length'=>trim($hand_length),
						'first_finger_length'=>trim($first_finger_length),
						'second_finger_length'=>trim($second_finger_length),
						'third_finger_length'=>trim($third_finger_length),
						'forth_finger_length'=>trim($forth_finger_length),
						'finger_disk'=>trim($finger_disk),
						'dermal_fringe_along_finger'=>trim($dermal_fringe_along_finger),
						'lateral_dermal_fringe_on_finger'=>trim($lateral_dermal_fringe_on_finger),
						'webbing_on_finger'=>trim($webbing_on_finger),
						'inner_palmar_tubercle'=>trim($inner_palmar_tubercle),
						'outer_plmar_tubercle'=>trim($outer_plmar_tubercle),
						'supernumerary_tubercle_on_finger'=>trim($supernumerary_tubercle_on_finger)
						)
				);
			$forlimb_characters->save();
			
			
			$hindlimb_characters	= new Dataface_Record('hindlimb_characters', array());
			 // We insert the default values for the record.
			$hindlimb_characters->setValues($defaultValues);  
			
			$hindlimb_characters->setValues(
					array(
						'id'=>trim($Id),
						'femur_length_min'=>trim($femur_length_min),
						'femur_length_max'=>trim($femur_length_max),
						'tibia_shank_length'=>trim($tibia_shank_length),
						'foot_length'=>trim($foot_length),
						'total_foot_length'=>trim($total_foot_length),
						'first_toe_length'=>trim($first_toe_length),
						'second_toe_length'=>trim($second_toe_length),
						'third_toe_length'=>trim($third_toe_length),
						'fourth_toe_length'=>trim($fourth_toe_length),
						'fifth_toe_length'=>trim($fifth_toe_length),
						'webbing_on_toe'=>trim($webbing_on_toe),
						'dermal_fringe_along_toe'=>trim($dermal_fringe_along_toe),
						'lateral_dermal_fringe_on_toe'=>trim($lateral_dermal_fringe_on_toe),
						'supernumerary_tubercle_on_toes'=>trim($supernumerary_tubercle_on_toes),
						'inner_metatarsal_tubercle'=>trim($inner_metatarsal_tubercle),
						'outer_metatarsal_tubercle'=>trim($outer_metatarsal_tubercle)
						)
				);
			$hindlimb_characters->save();
			
			
			$vocal_sac_tympanum	= new Dataface_Record('vocal_sac_tympanum', array());
			 // We insert the default values for the record.
			$vocal_sac_tympanum->setValues($defaultValues);  
			
			$vocal_sac_tympanum->setValues(
					array(
						'id'=>trim($Id),
						'vocal_sac_manifestation'=>trim($vocal_sac_manifestation),
						'vocal_sac_form'=>trim($vocal_sac_form),
						'vocal_sac_distensibility'=>trim($vocal_sac_distensibility),
						'tympanum_covering'=>trim($tympanum_covering),
						'tympanum_eye_ration'=>trim($tympanum_eye_ration)
						)
				);
			$vocal_sac_tympanum->save();
			
			
			$habitat_preference	= new Dataface_Record('habitat_preference', array());
			 // We insert the default values for the record.
			$habitat_preference->setValues($defaultValues);  
			
			$habitat_preference->setValues(
					array(
						'id'=>trim($Id),
						'macro'=> trim($macro),
						'micro'=> trim($micro)
						)
				);
			$habitat_preference->save();
			
			
			
			
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
			
			$IUCN_threat	= new Dataface_Record('iucn_threat_status', array());
			 // We insert the default values for the record.
			$IUCN_threat->setValues($defaultValues);  
			
			$IUCN_threat->setValues(
					array(
						'id'=>trim($Id),
						'threat_category' => trim($threat_category),
						'population_decline'=>trim($population_decline)
						)
				);
			$IUCN_threat->save();
			
			
			
			$colouration	= new Dataface_Record('colouration', array());
			 // We insert the default values for the record.
			$colouration->setValues($defaultValues);  
			
			$colouration->setValues(
					array(
						'id'=>trim($Id),
						'pattern'=>trim($pattern),
						'colour' => trim($colour),
						'warty'=>trim($warty),
						'uni_vs_polymorph' => trim($uni_vs_polymorph)
						)
				);
			$colouration->save();
			
			
			
			
			$call_parameters	= new Dataface_Record('call_parameters', array());
			 // We insert the default values for the record.
			$call_parameters->setValues($defaultValues);  
			
			$call_parameters->setValues(
					array(
						'id'=>trim($Id),
						'fundamental_frequency' => trim($fundamental_frequency),
						'dominant_frequency'=>trim($dominant_frequency),
						'pulserate'=>trim($pulserate),
						'call_duration'=>trim($call_duration),
						'note_duration'=>trim($note_duration),
						'call_guild'=>trim($call_guild),
						'min_frequency'=>trim($min_frequency),
						'max_frequency'=>trim($max_frequency),
						'dominant_frequency_modulation'=>trim($dominant_frequency_modulation)
						)
				);
			$call_parameters->save();
			
			
			$calling_behaviour	= new Dataface_Record('calling_behaviour', array());
			 // We insert the default values for the record.
			$calling_behaviour->setValues($defaultValues);  
			$calling_behaviour->setValues(
					array(
						'id'=>trim($Id),
						'call_perch_hight'=>trim($call_perch_hight),
						'to_water'=>trim($to_water),
						'chorusing' => trim($chorusing),
						'cover'=>trim($cover),
						'rapids_or_waterfalls'=>trim($rapids_or_waterfalls)
						)
				);
			$calling_behaviour->save();
			
			$misc	= new Dataface_Record('misc');
			 // We insert the default values for the record.
			$misc->setValues($defaultValues);  
			$misc->setValues(
					array(
						'id'=>trim($Id),
						'daily_activity'=>trim($daily_activity),
						'reproductive_mode'=>trim($reproductive_mode),
						'tadpole_habitat'=>trim($tadpole_habitat),
						'tadpole_feeding'=>trim($tadpole_feeding),
						'maternal_care'=>trim($maternal_care),
						'maternal_care_details'=>trim($maternal_care_details),
						'abundance'=>trim($abundance),
						'stratigraphic_range'=> trim($stratigraphic_range),
						'f_environment_type'=>trim($f_environment_type),
						'diet'=>trim($diet),
						'climate'=>trim($climate),
						'holotype'=>trim($holotype)
						)
				);
			$misc->save();
			
			
			
			
			// Now add the record to the output array.
			$records[] = $record ; 
		
		}
        
		
    }
    
    // Now we return the array of records to be imported.
    return $records;
}




}
?>