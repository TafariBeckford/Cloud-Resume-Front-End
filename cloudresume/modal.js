// Get the modal
var modal = document.getElementById("modal");

// Get the image and insert it inside the modal
var images = document.querySelectorAll(".image");
var modalImg = document.getElementById("modal-image");
var captionText = document.getElementById("caption");

images.forEach(function(image) {
  image.onclick = function() {
    modal.style.display = "block";
    modalImg.src = this.querySelector(".modal-image").src;
    captionText.innerHTML = this.querySelector(".caption").innerHTML;
  }
});

// Close the modal when the user clicks on <span> (x)
var closeBtn = document.querySelector(".close1");
closeBtn.onclick = function() {
  modal.style.display = "none";
}

// Close the modal when the user clicks anywhere outside of it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
