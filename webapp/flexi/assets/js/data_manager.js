
// Row Layout ------------------------------------------------------------------
/*
ROW_TEMPLATES = {
    "weapons": [
        'type',
        'class',
        'name',
        'penetration:base',
        'penetration:ss',
        'penetration:bf',
        'penetration:fa',
        'damage_ranking',
        'damage_type',
        'critital_rating',
        'range_effecivness:0',
        'range_effecivness:1',
        'range_effecivness:2',
        'range_effecivness:3',
        'range_effecivness:4',
        'capacity',
        'radius',
        'size',
        'minimum_strength',
        'reload',
        'rate_of_fire',
        'cost',
        'legality',
        'avalability'
    ]
};
*/

// Cell Renderers --------------------------------------------------------------
function data_object_string(data_object) {
    /*
     * Take a json data object and infer a type and print it
     */
    function null_dash(value) {if (value==null) {return '-'} else {return value;}}
    
    if (data_object == null) {return "";}
    if (typeof(data_object) != "object") {return data_object;}
    if ('dice_type' in data_object) {
        return ""+(data_object['quantity'] || 1)+"D"+data_object['dice_type'];
    }
    if ('damage_rank' in data_object) {
        return ""+data_object['damage_rank']+"/"+data_object['modifyer'];
    }
    if ('close' in data_object) {
        return ""+null_dash(data_object['close'])+"/"+null_dash(data_object['medium'])+"/"+null_dash(data_object['long']);
    }
    if ('semi' in data_object) {
        return ""+null_dash(data_object['single'])+"/"+null_dash(data_object['semi'])+"/"+null_dash(data_object['auto']);
    }
    return data_object;
}

// Load Data -------------------------------------------------------------------
CACHE = {};
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

// Generate Table --------------------------------------------------------------
/*
function generate_table($data_target, source, filter) {
    if (source == null) {
        source = $data_target.attr('data-source');
    }
    if (filter == null) {
        filter = $data_target.attr('data-filter');
    }
    get_data(source, function(data) {
        var buffer = "<table>";
        for (index in data) {
            buffer += render_row("weapons", data[index]);
        }
        buffer += "</table>";
        $data_target.html(buffer);
    });    
};

function render_row(row_template, data_row) {
    //console.log(row_template, data_row);
    var buffer = "";
    buffer += "<tr>";
    $.each(ROW_TEMPLATES[row_template], function(col, key_names) {
        buffer += "<td>"+data_object_string(get_nested_data_value(key_names, data_row))+"</td>";
    });
    buffer += "</tr>\n";
    return buffer
};
*/

function field_filter(data, filter) {
    if (typeof(filter)=="function") {
        return filter(data);
    }
    if (typeof(filter)=="string") {
        /* Convert/Split/Trim String into fieldnames */
        filter = filter.split(",");
        $.each(filter, function(index, item){
            filter[index]=item.trim()
        });
    }
    if (filter.__proto__ == [].__proto__) {
        //TODO
        return data;
    }
    else if (typeof(filter)=="object") {
        /* {'size':3} -> all data items with the field that ==3 are selected and returned
         * can use composite keys in the form 'key:key2:key3'
         */
        var data_new = []
        for (filter_key in filter) {
            for (item in data) {
                if (get_nested_data_value(key,item)==filter[filter_key]) {
                    data_new.push(item);
                }
            }
        }
        return data_new;
    }
    console.warn("Unable to filter data");
    return data;
}

function render_data_item_to_template($data_template, data_item) {
    $data_render = $data_template.clone();
    $.each(data_item, function(key, value){
        $data_render.find('[data-field="'+key+'"]').html(data_object_string(get_nested_data_value(key,value)));
    });
    return $data_render;
}

function render_rows($data_target, $data_template, source, filter) {
    if (source == null) {source = $data_target.attr('data-source');}
    if (filter == null) {filter = $data_target.attr('data-filter');}
    get_data(source, function(data) {
        data = field_filter(data, filter);
        $data_target.empty();
        $.each(data, function(index, data_item) {
            $data_target.append(render_data_item_to_template($data_template, data_item));
        });
    });
}
