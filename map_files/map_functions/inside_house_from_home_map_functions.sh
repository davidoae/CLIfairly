#!bin/bash


map_function_conditions(){

  	if [ "$newy" -eq 3 -a "$newx" -eq 2 ]; then
	    	stop
  	fi

  	# map changes
	# slightly more decorum, but still horrible to read, therefore a comment...
	# if on map2 in y=5,x={6,7}
	if [ "$current_map_char_is_on" -eq 2 -a "$y" -eq 5 -a \( "$x" -eq 6 -o "$x" -eq 7 \) ]; then
		change_conf_value "character_files/character.cfg" "current_map_char_is_on" 1
		get_new_map_info_set_starting_pos 7 10
	fi

}
