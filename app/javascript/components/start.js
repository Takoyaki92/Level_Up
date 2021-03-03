const start= () => {
  const startButton = document.getElementById("start");
  
  startButton.addEventListener('click', (event) => {
    const vid = document.getElementById("background-video");
    const audio = document.getElementById("beach-sounds");
    vid.style.display = "";
  });

};

export { start }