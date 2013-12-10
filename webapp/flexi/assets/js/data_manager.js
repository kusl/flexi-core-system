
ROW_TEMPLATES = {
    "weapons": [
        'name',
        'penetration:base',
        'penetration:ss',
        'penetration:bf',
        'penetration:fa',
        'damage_ranking',
        'damage_type',
        'critital_rating'
    ]
};

CACHE = {};

function data_object_string(data_object) {
    /*
     * Take a json data object and infer a type and print it
     */
    if (data_object == null) {return "";}
    if (typeof(data_object) != "object") {return data_object;}
    if ('dice_type' in data_object) {
        return ""+(data_object['quantity'] || 1)+"D"+data_object['dice_type'];
    }
    if ('damage_rank' in data_object) {
        return ""+data_object['damage_rank']+"/"+data_object['modifyer'];
    }
    return data_object;
}

function generate_table($data_target, source) {
    if (source == null) {
        source = $data_target.attr('data-source')
    }
    console.log("Building: "+source);
    get_data(source, function(data){
        //console.log(data);
        console.log(render_row("weapons", data[0]));
    });    
};

function get_data(source, process_data_func) {
    // This cache is pointless ... it is only set on callback ... and multiple requests happen to fast ... lame
    if (source in CACHE) {
        console.log('Retreving data cache for - '+source);
        process_data_func(CACHE[source]);
        return;
    }
    console.log('Requesting data - '+source);
    $.get("/static/data/"+source+".json", function(data) {
        CACHE[source] = data;
        process_data_func(data);
    });
}

function render_row(row_template, data_row) {
    console.log(row_template, data_row);
    var buffer = "";
    buffer += "<tr>";
    $.each(ROW_TEMPLATES[row_template], function(col, key_names) {
        buffer += "<td>"+data_object_string(get_nested_data_value(key_names, data_row))+"</td>";
    });
    buffer += "</tr>";
    return buffer
};
