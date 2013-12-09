function generate_table($data_target, source) {
    console.log("Building: "+source);
    $.get("/static/data/"+source+".json", function(data){
        console.log(data);
    });
};
