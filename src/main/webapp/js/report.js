/*function getId(){
var id = document.getElementById("updateHolder").value;
console.log(id);
document.getElementById('id').innerHTML = id;
}*/
$(".updateButton").click(function() {
    var $row = $(this).closest("tr");    // Find the row
    var $text = $row.find(".holderId").text(); // Find the text
    
    // Let's test it out
    document.getElementById("id").value = $text;
});