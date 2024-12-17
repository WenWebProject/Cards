// get all the "Film_Card"-Elements and put them in an Array, then handle each Element
Array.from(document.getElementsByClassName('Film_Card')).forEach((card, index)=>{
      
  const slides = card.getElementsByClassName('mySlides'); //put all 3 slides from one city into variable "slides"
  const dots = card.getElementsByClassName('dot'); //put all 3 dots from one city into variable "dots"

  
  card.querySelector('.prev').onclick = () => plusSlides(-1);
  card.querySelector('.next').onclick = () => plusSlides(1);

  let slideIndex = 1;
  showSlides(slideIndex);  //show the 1st slide

  
  // Next/previous controls
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }

 
  function showSlides(n) {
    
    if (n > slides.length) {slideIndex = 1}
    if (n < 1) {slideIndex = slides.length}

    Array.from(slides).forEach((slide)=>{slide.style.display = "none"});
    Array.from(dots).forEach((dot)=>{dot.className = dot.className.replace(" active", "")});

    slides[slideIndex-1].style.display = "block";
    dots[slideIndex-1].className += " active";
  }
  

  // JavaScript to handle button click and play video
  const video = card.querySelector('#myVideo');
  const playButton = card.querySelector('#playButton');
  
  // Add an event listener for the button click
  playButton.addEventListener('click', () => {
    if (video.paused || video.ended) {
      video.play(); // Play the video
      playButton.textContent = "Stop Video"; // Update button text
    } else {
      video.pause(); // Pause the video
      playButton.textContent = "Play Video"; // Update button text
    }
  });
 

});

