const start= () => {
  const startButton = document.getElementById("start");
  
  startButton.addEventListener('click', (event) => {
    const vid = document.getElementById("background-video");
    const audio = document.getElementById("beach-sounds");
    
    if (vid.paused == false) {
      vid.pause();
    } else {
      vid.play();
    };
    
    if (audio.paused == false) {
      audio.pause();
    } else { 
      audio.play();
    };
  });

};

export { start }