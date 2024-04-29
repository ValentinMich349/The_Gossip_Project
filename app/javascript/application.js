// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"

$(document).ready(function () {
    // Définir la largeur du carrousel en fonction du nombre de cartes
    var carouselWidth = $('#gossipCarousel .carousel-inner').width();
    var cardWidth = carouselWidth / $('.carousel-item').length;
    $('#gossipCarousel .carousel-inner').css('width', carouselWidth * $('.carousel-item').length);
    $('.carousel-item').css('width', cardWidth);

    // Activer le défilement automatique du carrousel toutes les 5 secondes
    setInterval(function () {
        $('#gossipCarousel').carousel('next');
    }, 5000);
});
