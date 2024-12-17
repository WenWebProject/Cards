let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}


// JavaScript to handle button click and play video
const video = document.getElementById('myVideo');
const button = document.getElementById('playButton');

// Add an event listener for the button click
button.addEventListener('click', () => {
  if (video.paused || video.ended) {
      video.play(); // Play the video
      button.textContent = "Stop Video"; // Update button text
  } else {
      video.pause(); // Pause the video
      button.textContent = "Play Video"; // Update button text
  }
});
