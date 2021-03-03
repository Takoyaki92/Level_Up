const finish= () => {
  const button = document.querySelector('#finish');
  const start = document.querySelector('.study_button');
  const hidden = document.getElementById('hidden');

  button.addEventListener('click', (event) => {
    const post = document.getElementById("one");
    const vid = document.getElementById("background-video");
    const select = document.getElementById("card");
    const timerCard = document.getElementById("time-card");
    const audio = document.getElementById("beach-sounds");
    // button.insertAdjacentHTML('afterend', post)
    post.style.display = "";
    button.style.display = "none";
    start.style.display = "none";
    hidden.style.display = "none";
    vid.pause();
    audio.pause();
    select.style.display = "none";
    timerCard.style.display = "none";
  });

};

export { finish }
