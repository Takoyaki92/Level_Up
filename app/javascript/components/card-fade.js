const fade= () => {
  const card = document.getElementById("study_session_goal");
  const select = document.getElementById("card");
  const timerCard = document.getElementById("time-card");

  card.addEventListener('keyup', (event) => {
    if (event.key === 'Enter') {
      select.className = "card-style animate__animated animate__fadeOutUp";
      timerCard.className = "card-style animate__animated animate__fadeInUp";

    }
  })
  
}

export { fade }