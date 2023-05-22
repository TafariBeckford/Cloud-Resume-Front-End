 // Open the modal
 function openModal(src, caption) {
  document.getElementById('modalImg').src = src;
  document.getElementById('caption').innerHTML = caption;
  document.getElementById('myModal').style.display = 'block';
}

function closeModal() {
  var modal = document.getElementById("myModal");
  modal.style.display = "none";
}

// Close the modal when the 'x' button is clicked
var closeBtn = document.getElementsByClassName("close")[0];
closeBtn.addEventListener("click", closeModal);