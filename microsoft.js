function fix_it (){
    var text_area_input = document.getElementById("microsoft_input");
    var fixed_output = document.getElementById("fixed");
    var bad_input = text_area_input.value;
    
    var good_data = bad_input
        .replace(/[\u2018\u2019]/g, "'")  // single quotes
        .replace(/[\u201C\u201D]/g, '"')  // double quotes
        .replace(/[\u2013\u2014]/g, '-'); // dashes
    
    fixed_output.innerHTML = good_data;
}
