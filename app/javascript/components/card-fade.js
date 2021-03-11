const fade= () => {
  const card = document.getElementById("study_session_goal");
  const select = document.getElementById("card");
  const timerCard = document.getElementById("time-card");
  const skillTitle = document.getElementById("new-skill-title");

  card.addEventListener('keyup', (event) => {
    if (event.key === 'Enter') {
      select.className = "card-style animate__animated animate__fadeOutUp position";
      select.style.display = "none";
      timerCard.className = "card-style animate__animated animate__fadeInUp position";
      skillTitle.className = "animate__animated animate__fadeOutUp text-white new-h2";
    }
  })
  
}

export { fade }