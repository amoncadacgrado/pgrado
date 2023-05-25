document.addEventListener("DOMContentLoaded", function() {
  var sliderImages = document.querySelectorAll('.slider img');
  var currentImageIndex = 0;

  function showNextImage() {
      // Oculta la imagen actual
      sliderImages[currentImageIndex].style.display = 'none';

      // Incrementa el índice
      currentImageIndex++;

      // Verifica si alcanzamos el final del slider y volvemos al principio
      if (currentImageIndex >= sliderImages.length) {
          currentImageIndex = 0;
      }

      // Muestra la siguiente imagen
      sliderImages[currentImageIndex].style.display = 'block';

      // Establece un temporizador para mostrar la siguiente imagen después de un tiempo determinado
      setTimeout(showNextImage, 5000);
  }

  // Comienza el slider
  showNextImage();
});
