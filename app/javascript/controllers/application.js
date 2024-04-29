import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application

export { application }

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