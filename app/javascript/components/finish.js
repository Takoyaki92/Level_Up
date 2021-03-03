const finish= () => {
  const button = document.querySelector('#finish');
  const start = document.querySelector('.study_button');
  const hidden = document.getElementById('hidden');

  button.addEventListener('click', (event) => {
    const post = document.getElementById("one");
    const vid = document.getElementById("background-video");
    // button.insertAdjacentHTML('afterend', post)
    post.style.display = "";
    button.style.display = "none";
    start.style.display = "none";
    hidden.style.display = "none";
    vid.style.display = "none";
  });

};

export { finish }
