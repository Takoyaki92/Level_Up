const fade= () => {
  const card = document.getElementById("study_session_goal");
  const select = document.getElementById("card");

  card.addEventListener('keyup', (event) => {
    if (event.key === 'Enter') {
      select.className = "card-style animate__animated animate__fadeOutUp";
    }
  })
  
}

export { fade }