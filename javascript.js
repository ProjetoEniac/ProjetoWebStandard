$(function(){

    function atualizar_info (){
        $("#camiseta-name").text( $(".slick-center").data("name") );
        var camisetaPrice = parseFloat($(".slick-center").data("price")).toLocaleString("pt-BR", {style:"currency", currency: "BRL", minimumFractionDigits: 2});
        $("#camiseta-price").text( camisetaPrice );
    }
    $(".vitrine-slider").on('init', function(){
        atualizar_info ();
    });

    $(".vitrine-slider").slick({
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 1,
        centerMode: true,
        prevArrow: $("#arrow-prev"),
        nextArrow: $("#arrow-next"),
        responsive: 
        [
            {
              breakpoint: 640,
              settings: {
                slidesToShow: 1
                } 
            }
        ]
    });

    $(".vitrine-slider").on('afterChange', function(){
        atualizar_info ();
    });
})