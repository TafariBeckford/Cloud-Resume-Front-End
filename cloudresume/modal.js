// Wait for the DOM to load
document.addEventListener("DOMContentLoaded", function() {
  // Get the modal element
  var modal = document.getElementById("modal");
  var modalImg = document.getElementById("modal-image");
  var closeButton = document.querySelector(".close");

  // Get the image and insert it inside the modal
  var images = document.querySelectorAll(".grid-item img");
  var overlay = document.querySelectorAll(".overlay");

  // Check if the required elements are available
  if (modal && modalImg && closeButton && images.length > 0 && overlay.length > 0) {
    images.forEach(function(image, index) {
      image.addEventListener("click", function() {
        modal.style.display = "block";
        modalImg.src = this.src;
      });

      overlay[index].addEventListener("click", function(event) {
        event.stopPropagation();
        modal.style.display = "block";
        modalImg.src = image.src;
      });
    });

    // Close the modal when the user clicks on the close button
    closeButton.addEventListener("click", function() {
      modal.style.display = "none";
    });

    // Close the modal when the user clicks outside of it
    window.addEventListener("click", function(event) {
      if (event.target === modal) {
        modal.style.display = "none";
      }
    });
  }
});
