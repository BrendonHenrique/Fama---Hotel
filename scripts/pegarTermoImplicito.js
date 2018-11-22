$(document).ready(function(){
    $("select.feature").change(function() {
        thisFeature=$(this);
        selectedFeature=$(thisFeature).children("option").filter(":selected").text();
        $.ajax({
            type: "POST",
            url:"retornaTermoImplicito.php",
            data:{feature : selectedFeature},
            success:function(result){
                $(thisFeature).parent().children("select.implicito").html(result);
            }
        });
    });
});