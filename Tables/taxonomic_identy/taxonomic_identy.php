<?php
header('Content-Type: text/html; charset=utf-8');
mysql_set_charset ('utf-8');


class tables_taxonomic_identy {

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
	
	$this->isImport = 1;
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
        list($Id,$Order,$Family,$Genus,$Species,$Tax_authority,$Continent,$Range_size1,$Range_size2,$Range,$elevation_min,$elevation_max,
			
			$svl_male_min,$svl_male_max,$svl_male_mean,$svl_female_min,$svl_female_max,$svl_female_mean,$sexual_dimorphism,
			
			$head_length,$head_width,$snout_length,$internarial_distance,$nostril_to_snout_distance,$eye_to_nostril,$maximum_tympanum_diameter,
			$eye_length,$distance_between_front_of_eyes,$distance_between_behind_of_eyes,$interorbital_distance,$snout_shape_lateral,
			$snout_shape_dorsal,$interorbital_shape,$loreal_region_shape,$canthus_rostralis,$nostril_shape,$tympanum_shape,
			
			
			$forelimb_length,$humerus_length_min,$humerus_length_max,$hand_length,$first_finger_length,$second_finger_length,$third_finger_length,
			$forth_finger_length,$finger_disk,$dermal_fringe_along_finger,$lateral_dermal_fringe_on_finger,$webbing_on_finger,$inner_palmar_tubercle,
			$outer_plmar_tubercle,$supernumerary_tubercle_on_finger,
			
			
			$femur_length_min,$femur_length_max,$tibia_shank_length,$foot_length,$total_foot_length,$first_toe_length,$second_toe_length,
			$third_toe_length,$fourth_toe_length,$fifth_toe_length,$webbing_on_toe,$dermal_fringe_along_toe,$lateral_dermal_fringe_on_toe,
			$supernumerary_tubercle_on_toes,$inner_metatarsal_tubercle,$outer_metatarsal_tubercle,
			
			$vocal_sac_manifestation,$vocal_sac_form,$vocal_sac_distensibility,$tympanum_covering,$tympanum_eye_ration,

			$macro, $micro,
			
			$daily_activity,
			
			$clutchsize_eggs_min,$clutchsize_eggs_max,$clutchsize_eggs_class,$clutchsize_method,$egg_diameter_without_jelly,
			$egg_diameter_with_jelly,$location,$details,$clutch_structure,
			
			
			
			$reproductive_mode,$tadpole_habitat,$tadpole_feeding,$maternal_care,$maternal_care_details,$abundance,$stratigraphic_range,$f_environment_type,$diet,
			
			$threat_category,$population_decline,
			
			$pattern,$colour,$warty,$uni_vs_polymorph,
			
			$climate,
			
			$fundamental_frequency,$dominant_frequency,$pulserate,$call_duration,$note_duration,$call_guild,$min_frequency,$max_frequency,$dominant_frequency_modulation,
			
			$call_perch_hight,$to_water,$chorusing,$cover,$rapids_or_waterfalls,
			
			$holotype
			
			

			) = explode(';', $row);
     
		
	 	if(empty($Id))
			$Id = utf8_encode(trim($Genus)) .'_'. utf8_encode(trim($Species));
		
		$record = new Dataface_Record('taxonomic_identy', array());
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
				'Tax_authority'=>utf8_encode(trim($Tax_authority))
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
					'macro'=>$macro,
					'micro'=>$micro,
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
					'calling_behaviourcol'=>trim($calling_behaviourcol),
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
        $records[] = $record ; //array_merge($record,$bodySizeRecord,$coloration);
		
		
    }
    
    // Now we return the array of records to be imported.
    return $records;
}



}
?>