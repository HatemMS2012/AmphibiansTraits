<?php
class tables_all_traits {

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
        list($id,$Order,$Family,$Genus,$Species,$Tax_authority,
		$Continent,$Range_size1,$Range_size2,$Range,$elevation_min,$elevation_max,
		$svl_male_min,$svl_male_max,$svl_male_mean,$svl_female_min,$svl_female_max,$svl_female_mean,$sexual_dimorphism,$head_length,$head_width,$snout_length,$internarial_distance,$nostril_to_snout_distance,
		$eye_to_nostril,$maximum_tympanum_diameter,$eye_length,$distance_between_front_of_eyes,$distance_between_behind_of_eyes,$interorbital_distance,$snout_shape_lateral,$snout_shape_dorsal,$interorbital_shape,$loreal_region_shape,$canthus_rostralis,$nostril_shape,$tympanum_shape,
		$forelimb_length,$humerus_length_min,$humerus_length_max,$hand_length,$first_finger_length,$second_finger_length,$third_finger_length,$forth_finger_length,$finger_disk,$dermal_fringe_along_finger,$lateral_dermal_fringe_on_finger,$webbing_on_finger,$inner_palmar_tubercle,$outer_plmar_tubercle,$supernumerary_tubercle_on_finger,
		$femur_length_min,$femur_length_max,$tibia_shank_length,$foot_length,$total_foot_length,$first_toe_length,$second_toe_length,$third_toe_length,$fourth_toe_length,$fifth_toe_length,$webbing_on_toe,$dermal_fringe_along_toe,$lateral_dermal_fringe_on_toe,$supernumerary_tubercle_on_toes,$inner_metatarsal_tubercle,$outer_metatarsal_tubercle,
		$vocal_sac_manifestation,$vocal_sac_form,$vocal_sac_distensibility,$tympanum_covering,$tympanum_eye_ration,$macro,$micro,$daily_activity,$clutchsize_eggs_min,$clutchsize_eggs_max,$clutchsize_eggs_class,$clutchsize_method,
		$egg_diameter_without_jelly,$egg_diameter_with_jelly,$location,$details,$clutch_structure,$reproductive_mode,$tadpole_habitat,$tadpole_feeding,$maternal_care,$maternal_care_details,$abundance,$stratigraphic_range,$f_environment_type,
		$diet,$threat_category,$population_decline,$pattern,$colour,$warty,$uni_vs_polymorph,$climate,$fundamental_frequency,$dominant_frequency,$pulserate,$call_duration,$note_duration,$call_guild,$min_frequency,$max_frequency,$dominant_frequency_modulation,
		$call_perch_hight,$calling_behaviourcol,$to_water,$chorusing,$cover,$rapids_or_waterfalls,$holotype) = explode(';', $row);
        
		$all_traits_record = new Dataface_Record('all_traits', array());
         // We insert the default values for the record.
        $all_traits_record->setValues($defaultValues);  
		
		// Now we add the values from the CSV file to the taxonomic_identy table
        $all_traits_record->setValues(
            array(
                'id'=>$id,
					'Order'=>$Order,
					'Family'=>$Family,
					'Genus'=>$Genus,
					'Species'=>$Species,
					'Tax_authority'=>$Tax_authority,
					'Continent'=>$Continent,
					'Range_size1'=>$Range_size1,
					'Range_size2'=>$Range_size2,
					'Range'=>$Range,
					'elevation_min'=>$elevation_min,
					'elevation_max'=>$elevation_max,
					'svl_male_min'=>$svl_male_min,
					'svl_male_max'=>$svl_male_max,
					'svl_male_mean'=>$svl_male_mean,
					'svl_female_min'=>$svl_female_min,
					'svl_female_max'=>$svl_female_max,
					'svl_female_mean'=>$svl_female_mean,
					'sexual_dimorphism'=>$sexual_dimorphism,
					'head_length'=>$head_length,
					'head_width'=>$head_width,
					'snout_length'=>$snout_length,
					'internarial_distance'=>$internarial_distance,
					'nostril_to_snout_distance'=>$nostril_to_snout_distance,
					'eye_to_nostril'=>$eye_to_nostril,
					'maximum_tympanum_diameter'=>$maximum_tympanum_diameter,
					'eye_length'=>$eye_length,
					'distance_between_front_of_eyes'=>$distance_between_front_of_eyes,
					'distance_between_behind_of_eyes'=>$distance_between_behind_of_eyes,
					'interorbital_distance'=>$interorbital_distance,
					'snout_shape_lateral'=>$snout_shape_lateral,
					'snout_shape_dorsal'=>$snout_shape_dorsal,
					'interorbital_shape'=>$interorbital_shape,
					'loreal_region_shape'=>$loreal_region_shape,
					'canthus_rostralis'=>$canthus_rostralis,
					'nostril_shape'=>$nostril_shape,
					'tympanum_shape'=>$tympanum_shape,
					'forelimb_length'=>$forelimb_length,
					'humerus_length_min'=>$humerus_length_min,
					'humerus_length_max'=>$humerus_length_max,
					'hand_length'=>$hand_length,
					'first_finger_length'=>$first_finger_length,
					'second_finger_length'=>$second_finger_length,
					'third_finger_length'=>$third_finger_length,
					'forth_finger_length'=>$forth_finger_length,
					'finger_disk'=>$finger_disk,
					'dermal_fringe_along_finger'=>$dermal_fringe_along_finger,
					'lateral_dermal_fringe_on_finger'=>$lateral_dermal_fringe_on_finger,
					'webbing_on_finger'=>$webbing_on_finger,
					'inner_palmar_tubercle'=>$inner_palmar_tubercle,
					'outer_plmar_tubercle'=>$outer_plmar_tubercle,
					'supernumerary_tubercle_on_finger'=>$supernumerary_tubercle_on_finger,
					'femur_length_min'=>$femur_length_min,
					'femur_length_max'=>$femur_length_max,
					'tibia_shank_length'=>$tibia_shank_length,
					'foot_length'=>$foot_length,
					'total_foot_length'=>$total_foot_length,
					'first_toe_length'=>$first_toe_length,
					'second_toe_length'=>$second_toe_length,
					'third_toe_length'=>$third_toe_length,
					'fourth_toe_length'=>$fourth_toe_length,
					'fifth_toe_length'=>$fifth_toe_length,
					'webbing_on_toe'=>$webbing_on_toe,
					'dermal_fringe_along_toe'=>$dermal_fringe_along_toe,
					'lateral_dermal_fringe_on_toe'=>$lateral_dermal_fringe_on_toe,
					'supernumerary_tubercle_on_toes'=>$supernumerary_tubercle_on_toes,
					'inner_metatarsal_tubercle'=>$inner_metatarsal_tubercle,
					'outer_metatarsal_tubercle'=>$outer_metatarsal_tubercle,
					'vocal_sac_manifestation'=>$vocal_sac_manifestation,
					'vocal_sac_form'=>$vocal_sac_form,
					'vocal_sac_distensibility'=>$vocal_sac_distensibility,
					'tympanum_covering'=>$tympanum_covering,
					'tympanum_eye_ration'=>$tympanum_eye_ration,
					'macro'=>$macro,
					'micro'=>$micro,
					'daily_activity'=>$daily_activity,
					'clutchsize_eggs_min'=>$clutchsize_eggs_min,
					'clutchsize_eggs_max'=>$clutchsize_eggs_max,
					'clutchsize_eggs_class'=>$clutchsize_eggs_class,
					'clutchsize_method'=>$clutchsize_method,
					'egg_diameter_without_jelly'=>$egg_diameter_without_jelly,
					'egg_diameter_with_jelly'=>$egg_diameter_with_jelly,
					'location'=>$location,
					'details'=>$details,
					'clutch_structure'=>$clutch_structure,
					'reproductive_mode'=>$reproductive_mode,
					'tadpole_habitat'=>$tadpole_habitat,
					'tadpole_feeding'=>$tadpole_feeding,
					'maternal_care'=>$maternal_care,
					'maternal_care_details'=>$maternal_care_details,
					'abundance'=>$abundance,
					'stratigraphic_range'=> $stratigraphic_range,
					'f_environment_type'=>$f_environment_type,
					'diet'=>$diet,
					'threat_category' => $threat_category,
					'population_decline'=>$population_decline,
					'pattern'=>$pattern,
					'colour' => $colour,
					'warty'=>$warty,
					'uni_vs_polymorph' => $uni_vs_polymorph,
					'climate'=>$climate,
					'fundamental_frequency' => $fundamental_frequency,
					'dominant_frequency'=>$dominant_frequency,
					'pulserate'=>$pulserate,
					'call_duration'=>$call_duration,
					'note_duration'=>$note_duration,
					'call_guild'=>$call_guild,
					'min_frequency'=>$min_frequency,
					'max_frequency'=>$max_frequency,
					'dominant_frequency_modulation'=>$dominant_frequency_modulation,
					'call_perch_hight'=>$call_perch_hight,
					'calling_behaviourcol'=>$calling_behaviourcol,
					'to_water'=>$to_water,
					'chorusing' => $chorusing,
					'cover'=>$cover,
					'rapids_or_waterfalls'=>$rapids_or_waterfalls,
					'holotype'=>$holotype
                )
            );
		$all_traits_record->save();
		
		
				
		$records[] = $all_traits_record ; //array_merge($record,$bodySizeRecord,$coloration);
		
    }
    
    // Now we return the array of records to be imported.
    return $records;
}

}
?>