$(document).ready(function(){
    $(".addInCart").click(function () {
        var id = $(this).attr("data-id");
        $.post("/cart/addProductInCart/"+id, {}, function (data) {
            $("#totalCart").html(data);
        });
        return false;
    });
});
