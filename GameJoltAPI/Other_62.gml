if (ds_map_find_value(async_load, "id") == request) {
	if ds_map_find_value(async_load, "status") == 0 {
        var data=ds_map_find_value(async_load, "result");
		var json=json_decode(data);
		var response_map=ds_map_find_value(json, "response");
		
		show_debug_message("HTTP request "+ds_map_find_value(async_load, "url")+" returned:");
		show_debug_message(data);
		
		var success=ds_map_find_value(response_map,"success");
		if(success=="false"){
			show_debug_message("HTTP ERROR: "+ds_map_find_value(response_map,"message"));
		}
    }
    else{
        show_debug_message("HTTP ERROR: Error while sending request");
    }
}