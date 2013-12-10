
ROW_TEMPLATES = {
    "weapons": [
        'name',
        'penetration:base',
        'penetration:ss',
        'penetration:bf',
        'penetration:fa',
        'damage_ranking',
        'damage_type',
        'critial_rating'
    ]
};

CACHE = {};

function generate_table($data_target, source) {
    if (source == null) {
        source = $data_target.attr('data-source')
    }
    console.log("Building: "+source);
    get_data(source, function(data){
        //console.log(data);
        //console.log(render_row("weapons", data[0]));
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
        console.log(col, key_names);
        buffer += "<td>"+get_nested_data_value(key_names, data_row)+"</td>";
    });
    buffer += "</tr>";
    console.log("ooow",buffer);
    return buffer
};
