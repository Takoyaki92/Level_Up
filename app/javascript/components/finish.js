const finish= () => {
  const button = document.querySelector('#finish')
  const start = document.querySelector('.study_button')

  button.addEventListener('click', (event) => {
    const post = document.getElementById("one");
    // button.insertAdjacentHTML('afterend', post)
    post.style.display = "";
    button.style.display = "none";
    start.style.display = "none";
  });

};

export { finish }
